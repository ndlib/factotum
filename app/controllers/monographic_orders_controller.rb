class MonographicOrdersController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    new
    render :action => 'new'
  end
  
  def new
    @monographic_order = setup_monographic_order
  end
  
  def create
    @monographic_order = setup_monographic_order
    if @monographic_order.save
      session[:monographic_order_id] = @monographic_order.id
      AcquisitionMailer.monographic_submission(@monographic_order).deliver
      AcquisitionMailer.monographic_confirmation(@monographic_order, @monographic_order.creator).deliver
      if Rails.env == "production" && @monographic_order.selector.user && @monographic_order.selector.user != @monographic_order.creator
        AcquisitionMailer.monographic_confirmation(@monographic_order, @monographic_order.selector.user).deliver
      end
      redirect_to success_monographic_orders_path()
    else
      render :action => 'new'
    end
  end
  
  def success
    params[:id] = session[:monographic_order_id]
    show
    render :action => 'show'
  end
  
  def show
    @monographic_order = MonographicOrder.find(params[:id])
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
      raise exception
    end
  end
  
  private
    def setup_monographic_order
      params[:order] ||= order_defaults()
      monographic_order = MonographicOrder.new(params[:order])
      if current_user && current_user.selector.present? && current_user.selector.monographic?
        @required_selector = current_user.selector
        monographic_order.selector = current_user.selector
      end
      monographic_order.creator = current_user
      monographic_order
    end
    
    def order_defaults
      defaults = {:format => "Book"}
      if last_order = MonographicOrder.order("created_at DESC").where(:creator_netid => current_user.netid).first
        [:selector, :fund, :fund_other, :cataloging_location, :cataloging_location_other].each do |field|
          defaults[field] = last_order.send(field)
        end
      end
      defaults
    end
end
