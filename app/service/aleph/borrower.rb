require "nokogiri"
require "hash_ostruct"

module Aleph
  # Representation of an Aleph item
  class Borrower
    include Virtus.model
    extend ActiveModel::Naming
    include ActiveModel::Conversion
    include ActiveModel::Validations
    include RailsHelpers

    attr_reader :borrower, :netid, :borrowed_items, :hold_items,
                :ill_checked_out_items, :ill_available_web_items, :ill_pending_items

    def initialize(netid)
      @netid = netid
      @borrower = retrieve_borrower
      @borrowed_items = create_borrowed_item_list
      @hold_items = create_hold_item_list
      @ill_checked_out_items = create_ill_checked_out_list
      @ill_available_web_items = create_ill_avaialble_web_list
      @ill_pending_items = create_ill_pending_list
    end

    def retrieve_borrower
      aleph_rest_connection("bor_info").transact
    end

    def full_name
      borrower.bor_info.z303.z303_name
    end

    def email
      @netid + "@nd.edu"
    end

    def address_1
      borrower.bor_info.z304.z304_address_1
    end

    def address_2
      borrower.bor_info.z304.z304_address_2
    end

    def phone_number
      borrower.bor_info.z304.z304_telephone
    end

    def borrowed_item_count
      borrower.bor_info.item_l.count
    end

    def home_library
      borrower.bor_info.z303.z303_home_library
    end

    def status
      borrower.bor_info.z305.z305_bor_status
    end

    private

    def create_hold_item_list
      item_list = []
      if borrower.bor_info.item_h
        borrower.bor_info.item_h.each do |item|
          item_list.push marshall_aleph_item(item, "holds")
        end
      end
      item_list
    end

    def create_borrowed_item_list
      item_list = []
      if borrower.bor_info.item_l
        borrower.bor_info.item_l.each do |item|
          item_list.push marshall_aleph_item(item, "borrowed")
        end
      end
      item_list
    end

    def create_ill_checked_out_list
      checked_out = illiad_rest_connection("ill_checked_out").transact
      item_list = []
      if checked_out
        checked_out.each do |item|
          item_list.push marshall_ill_item(item.to_ostruct, "checked_out")
        end
      end
      item_list
    end

    def create_ill_avaialble_web_list
      available_web = illiad_rest_connection("ill_available_web").transact
      item_list = []
      if available_web
        available_web.each do |item|
          item_list.push marshall_ill_item(item.to_ostruct, "available_web")
        end
      end
      item_list
    end

    def create_ill_pending_list
      pending = illiad_rest_connection("ill_pending").transact
      # puts pending.inspect
      item_list = []
      if pending
        pending.each do |item|
          item_list.push marshall_ill_item(item.to_ostruct, "pending")
        end
      end
      item_list
    end

    def marshall_aleph_item(item, type)
      returned_item = {}
      returned_item[:title] = item.z13.z13_title
      returned_item[:author] = item.z13.z13_author
      returned_item[:due_date] = DateTime.parse(item.due_date).strftime("%m/%d/%Y") if item.due_date
      if type == "holds"
        returned_item[:hold_date] = item.z37.z37_hold_date
        returned_item[:pickup_location] = item.z37.z37_pickup_location
        returned_item[:on_hold_flag] = item.z37.z37_hold_date ? true : false
      end
      returned_item
    end

    def marshall_ill_item(item, type)
      returned_item = {}
      returned_item[:title] = item.LoanTitle
      returned_item[:journal_title] = item.PhotoJournalTitle
      returned_item[:journal_volume] = item.PhotoJournalVolume
      returned_item[:journal_issue] = item.PhotoJournalIssue
      returned_item[:journal_month] = item.PhotoJournalMonth
      returned_item[:journal_year] = item.PhotoJournalYear
      returned_item[:article_author] = item.PhotoArticleAuthor
      returned_item[:article_title] = item.PhotoArticleTitle
      returned_item[:author] = item.LoanAuthor
      returned_item[:published_date] = item.LoanDate
      returned_item[:request_type] = item.RequestType
      returned_item[:due_date] = item.DueDate
      returned_item[:ill_number] = item.ILLNumber
      returned_item[:transaction_number] = item.TransactionNumber
      returned_item[:transaction_status] = item.TransactionStatus
      returned_item[:transaction_date] = item.TransactionDate
      returned_item[:pages] = item.Pages
      returned_item
    end

    def rest_configuration
      if @rest_configuration.nil?
        path = File.join(Rails.root, "config", "rest.yml")
        @rest_configuration = YAML.load_file(path)[Rails.env]
      end
      @rest_configuration
    end

    def aleph_rest_connection(op)
      ExternalRest.new(
        base_url: rest_configuration["aleph_xservices_url"],
        path: url_path(op),
        connection_opts: { response_format: "xml" }
      )
    end

    def illiad_rest_connection(op)
      ExternalRest.new(
        base_url: rest_configuration["illiad_transactions_url"],
        verb: "get_illiad",
        path: url_path(op),
        connection_opts: { response_format: "application/json" }
      )
    end

    def url_path(op)
      case op
      when "bor_info"
        rest_configuration["aleph_xservices_borrower_path"].
          sub(/\<\<op\>\>/, Rack::Utils.escape(op).to_s).
          sub(/\<\<bor_id\>\>/, Rack::Utils.escape(@netid).to_s)
      when "update_bor"
      when "ill_checked_out"
        rest_configuration["illiad_checked_out_filter_path"].
          sub(/\<\<netid\>\>/, Rack::Utils.escape(@netid).to_s)
      when "ill_available_web"
        rest_configuration["illiad_available_web_filter_path"].
          sub(/\<\<netid\>\>/, Rack::Utils.escape(@netid).to_s)
      when "ill_pending"
        rest_configuration["illiad_pending_filter_path"].
          sub(/\<\<netid\>\>/, Rack::Utils.escape(@netid).to_s)
      end
    end

    # def request_body
    #   body_prefix = "op=update-item&library=NDU50&user_name=" + rest_configuration["aleph_xservices_username"]
    #   body_password = "&user_password=" + rest_configuration["aleph_xservices_password"]
    #   body_suffix = "&xml_full_req=" + process_status_xml
    #   body_prefix + body_password + body_suffix
    # end

    def process_status_xml
      render_to_string("/aleph/item_update_process_status", item: self).chomp
    end

    def parse_response(response)
      if (response.error.is_a? Array) || (!respons.error.include? "Item has been updated successfully")
        { status: "error", message: extract_error_response(response.error) }
      else
        { status: "ok", message: extract_error_response(response.error) }
      end
    end

    def extract_error_response(error_message)
      if error_message.is_a? Array
        error_message.join(" ")
      else
        error_message
      end
    end
  end
end
