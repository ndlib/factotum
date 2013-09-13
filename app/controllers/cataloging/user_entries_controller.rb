class Cataloging::UserEntriesController < ApplicationController
  before_filter :authenticate_user!


  

  #show all entries for specific month
  #same action for both "edit month" and "add new month" routes
  
  def new





  end  


  def show
    @cataloging_user = Cataloging::User.find(params[:user_id])

  	@month_start = Date.new(params[:year].to_i, params[:month].to_i, 1)

  	@copy_catalogings = @cataloging_user.copy_catalogings.where("month_start_date = ?", @month_start)
    @original_catalogings = @cataloging_user.original_catalogings.where("month_start_date = ?", @month_start)
    @volume_additions = @cataloging_user.volume_additions.where("month_start_date = ?", @month_start)
    @transfers = @cataloging_user.transfers.where("month_start_date = ?", @month_start)
    @withdrawals = @cataloging_user.withdrawals.where("month_start_date = ?", @month_start)

    @new_copy_cataloging = @cataloging_user.copy_catalogings.new()
    @new_original_cataloging = @cataloging_user.original_catalogings.new()
    @new_volume_addition = @cataloging_user.volume_additions.new()
    @new_withdrawal = @cataloging_user.withdrawals.new()
    @new_transfer = @cataloging_user.transfers.new()





  end



end
