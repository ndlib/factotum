class JustSayYesOrdersController < ApplicationController
  before_filter :authenticate_user!
  
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
      AcquisitionMailer.just_say_yes_submission(@just_say_yes_order).deliver
      AcquisitionMailer.just_say_yes_confirmation(@just_say_yes_order, @just_say_yes_order.creator).deliver
      if Rails.env == "production" && @just_say_yes_order.selector.user && @just_say_yes_order.selector.user != @just_say_yes_order.creator
        AcquisitionMailer.just_say_yes_confirmation(@just_say_yes_order, @just_say_yes_order.selector.user).deliver
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
    def setup_just_say_yes_order
      params[:order] ||= order_defaults()
      just_say_yes_order = JustSayYesOrder.new(params[:order])
      if current_user && current_user.selector.present?
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
