require 'pry'


class Cataloging::EntriesController < ApplicationController

  before_filter :authenticate_user!

  #specific user set up for cataloging system
  #@cataloging_user = Cataloging::User.find(:user_id => params[:user_id])

  def new
    entry_type.new
  end


  def create
    @entry = entry_type.new(params[entry_type])

    if @entry.save
      flash[:success] = "Your entry has been added."
      redirect_to(cataloging_root_path)
    else
      render :action => 'show'
    end

  end

  def edit
  	@entry = Cataloging::Entry.find(:id => :params[:entry_id])
  end


  def show
    @ads = Ad.where(:type => params[:type])

  end

  def index

  	@entries = entry_type.all

  end




  private
	 def entry_type
			params[:type].constantize
	 end

end
