class SelectorsController < ApplicationController
  before_filter :authenticate_user!, :except => [:funds]
  before_filter :check_admin!, :except => [:funds]
  
  def index
    @selectors = Selector.in_order
  end
  
  def new
    @selector = Selector.new
  end
  
  def create
    @selector = Selector.new(params[:selector])
    if @selector.save
      redirect_to selectors_path()
    else
      render :action => 'new'
    end
  end
  
  def edit
    @selector = Selector.find(params[:id])
  end
  
  def update
    @selector = Selector.find(params[:id])
    if @selector.update_attributes(params[:selector])
      redirect_to selectors_path()
    else
      render :action => 'edit'
    end
  end
  
  def show
    @selector = Selector.find(params[:id])
  end
  
  def destroy
    if @selector = Selector.find_by_id(params[:id])
      @selector.destroy
    end
    redirect_to selectors_path()
  end

  def funds
    @selector = Selector.find_by_netid(params[:id])
    if @selector.nil?
      raise ActiveRecord::RecordNotFound
    end
    respond_to do |format|
      format.json { render :text => @selector.funds_json}
    end
  end
  
  private
  
    def check_admin!
      selector = current_user.selector
      if current_user.netid != 'jkennel' && (!selector || !selector.admin?)
        render_403
      end
    end
end
