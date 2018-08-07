class MonographicOrdersController < ApplicationController
  before_filter :store_location
  before_filter :authenticate_user!

  def index
    @search = AcquisitionOrderSearch.new(params[:search])
    @search.set_page(params[:page])
    @search.search_object = current_user.monographic_orders
    respond_to do |format|
      format.html
      format.csv do
        headers['Content-Disposition'] = "attachment; filename=\"monographic_order_requests.csv\""
        render text: @search.search.to_csv
      end
    end
  end

  def new
    @monographic_order = setup_monographic_order
  end

  def create
    @monographic_order = setup_monographic_order
    if @monographic_order.save
      session[:monographic_order_id] = @monographic_order.id
      if deliver_confirmations?
        AcquisitionMailer.monographic_submission(@monographic_order).deliver_now
      end
      users = [@monographic_order.creator]
      if deliver_confirmations? && @monographic_order.selector.user && @monographic_order.selector.user != @monographic_order.creator
        users << @monographic_order.selector.user
      end
      users.each do |user|
        if user.receive_order_emails?
          AcquisitionMailer.monographic_confirmation(@monographic_order, user).deliver_now
        end
      end
      flash[:success] = "Your order has been submitted to monographic acquisitions.  You will receive a copy of your request via email."
      redirect_to monographic_order_path(@monographic_order)
    else
      render :action => 'new'
    end
  end

  def show
    @monographic_order = current_user.monographic_orders.find(params[:id])
  end

  def oclc
    @record = WorldCatOCLC.new(:oclc => params[:oclc_number], :isbn => params[:isbn])
    respond_to do |format|
      format.json { render :text => @record.as_json.reject{|k,v| k == "record"}.to_json}
    end
  rescue WorldCat::WorldCatError => exception
    if exception.message == "Record does not exist"
      render_404
    else
      Raven.capture_exception(exception)
      raise exception
    end
  end

  private
    def setup_monographic_order
      params[:order] ||= order_defaults()
      monographic_order = MonographicOrder.new(monographic_params)
      if params[:purchase_request_id]
        purchase_request = PurchaseRequest.find_by_id(params[:purchase_request_id])
        if purchase_request
          monographic_order.copy_from_purchase_request(purchase_request)
        end
      end
      if current_user.selector.present? && current_user.selector.monographic?
        @required_selector = current_user.selector
        monographic_order.selector = current_user.selector
      end
      monographic_order.creator = current_user
      monographic_order
    end

    def order_defaults
      defaults = {:format => "Book", :purchase_type => "Single title purchase"}
      if last_order = MonographicOrder.order("created_at DESC").where(:creator_netid => current_user.netid).first
        [:selector, :fund, :fund_other, :cataloging_location, :cataloging_location_other].each do |field|
          defaults[field] = last_order.send(field)
        end
      end
      defaults
    end

    def monographic_params
      params.require(:order).permit(:format, :title, :author, :publication_year, :publisher, :fund,
                                    :fund_other, :purchase_type, :cataloging_location, :cataloging_location_other,
                                    :series, :isbn, :rush_order, :rush_order_reason, :rush_order_reason_other,
                                    :hold_for_requester, :requester, :added_volume_copy, :link_source,
                                    :additional_details, :attachment_file_name, :attachment_content_type,
                                    :attachment_file_size, :attachment, :original_filename, :content_type,
                                    :created_at, :updated_at, :format_other, :author_unknown, :selector_netid, :selector,
                                    :price, :oclc_number, :recommended_supplier, :supplier_info, :edition, :creator_netid,
                                    :creator, :price_code, :volume_copy_system_number, :type,
                                    :publisher_unknown, :publication_year_unknown, :electronic_resource, :preorder,
                                    :preorder_expected_availability)
    end

    def deliver_confirmations?
      order_confirmation_environments.include?(Rails.env)
    end

    def order_confirmation_environments
      ['production']
    end
end
