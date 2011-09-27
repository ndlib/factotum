class MonographicOrdersController < ApplicationController
  def index
    new
    render :action => 'new'
  end
  
  def new
    @monographic_order = MonographicOrder.new
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
end
