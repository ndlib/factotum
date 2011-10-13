class MonographicOrdersController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    new
    render :action => 'new'
  end
  
  def new
    params[:monographic_order] ||= {:format => "Book", :selector_netid => default_selector_netid()}
    @monographic_order = MonographicOrder.new(params[:monographic_order])
  end
  
  def test
    @monographic_order = MonographicOrder.new(params[:monographic_order])
    if params[:monographic_order].present?
      @monographic_order.valid?
    end
    render :action => 'new'
  end
  
  def create
    @monographic_order = MonographicOrder.new(params[:monographic_order])
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
  
    def default_selector_netid
      selector = Selector.where(:netid => current_user.netid).first
      if selector
        selector.netid
      else
        
      end
    end
end
