class JustSayYesOrdersController < ApplicationController
  before_filter ::login_user!

  def index
    new
    render :action => 'new'
  end

  def new
    @just_say_yes_order = setup_just_say_yes_order
  end

  def create
    @just_say_yes_order = setup_just_say_yes_order
    if @just_say_yes_order.save
      session[:just_say_yes_order_id] = @just_say_yes_order.id
      AcquisitionMailer.just_say_yes_submission(@just_say_yes_order).deliver_now
      AcquisitionMailer.just_say_yes_confirmation(@just_say_yes_order, @just_say_yes_order.creator).deliver_now
      if Rails.env == "production" && @just_say_yes_order.selector.user && @just_say_yes_order.selector.user != @just_say_yes_order.creator
        AcquisitionMailer.just_say_yes_confirmation(@just_say_yes_order, @just_say_yes_order.selector.user).deliver_now
      end
      redirect_to success_just_say_yes_orders_path()
    else
      render :action => 'new'
    end
  end

  def success
    params[:id] = session[:just_say_yes_order_id]
    show
    render :action => 'show'
  end

  def show
    @just_say_yes_order = JustSayYesOrder.find(params[:id])
  end

  def export
    first_order = JustSayYesOrder.order("created_at ASC").first
    if first_order.present?
      @starting_date = first_order.created_at
    else
      @starting_date = Date.today
    end
    @ending_date = Date.today
  end

  def generate_csv
    require 'csv'

    @orders = JustSayYesOrder.default_order

    fields = JustSayYesOrder.display_fields
    fields << ["Additional details", :additional_details]
    fields << ["File", :file]

    csv_output = ""
    CSV::Writer.generate(csv_output) do |csv|
      title_row = []
      fields.each do |title,field|
        title_row << title
      end
      csv << title_row

      @orders.each do |order|
        values = []
        fields.each do |title,field|
          if field == :file
            if order.attachment.present?
              values << "#{host_prefix()}#{order.attachment.url}"
            end
          else
            values << order.send(field)
          end
        end
        csv << values
      end
    end

    send_data(csv_output, :filename => "Just Say Yes Orders.csv", :type => "text/csv")
  end

  private
    def just_say_yes_params
      params.require(:order).permit!
    end

    def setup_just_say_yes_order
      params[:order] ||= order_defaults()
      just_say_yes_order = JustSayYesOrder.new(just_say_yes_params)
      if current_user && current_user.selector.present? && current_user.selector.just_say_yes?
        @required_selector = current_user.selector
        just_say_yes_order.selector = current_user.selector
      end
      just_say_yes_order.creator = current_user
      just_say_yes_order.fund = "PCJSY"
      just_say_yes_order
    end

    def order_defaults
      defaults = {:format => "Book"}
      if last_order = JustSayYesOrder.order("created_at DESC").where(:creator_netid => current_user.netid).first
        [:selector, :cataloging_location, :cataloging_location_other].each do |field|
          defaults[field] = last_order.send(field)
        end
      end
      defaults
    end
end
