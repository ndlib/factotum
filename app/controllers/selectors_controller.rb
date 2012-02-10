class SelectorsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @selectors = Selector.in_order
  end
  
  def new
    @selector = Selector.new
  end
  
  def create
    @selector = Selector.new(params[:selector])
    if @selector.save
      redirect_to show_selectors_path(@selector)
    else
      render :action => 'new'
    end
  end
  
  def show
    @selector = Selector.find(params[:id])
  end
end
