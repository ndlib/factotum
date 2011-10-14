class MonographicOrdersController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    new
    render :action => 'new'
  end
  
  def new
    params[:monographic_order] ||= order_defaults()
    @monographic_order = MonographicOrder.new(params[:monographic_order])
  end
  
  def create
    @monographic_order = MonographicOrder.new(params[:monographic_order])
    @monographic_order.creator = current_user
    if @monographic_order.save
      session[:monographic_order_id] = @monographic_order.id
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
  
    def order_defaults
      defaults = {:format => "Book"}
      if last_order = MonographicOrder.order("created_at DESC").where(:creator_netid => current_user.netid).first
        [:selector, :fund, :fund_other, :cataloging_location, :cataloging_location_other].each do |field|
          defaults[field] = last_order.send(field)
        end
      end
      if selector = Selector.where(:netid => current_user.netid).first
        defaults[:selector] = selector
      end
      defaults
    end
end
