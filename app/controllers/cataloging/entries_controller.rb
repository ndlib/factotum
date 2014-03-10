class Cataloging::EntriesController < ApplicationController
  before_filter :authenticate_user!
  before_filter :cataloging_user?

  layout Proc.new { |controller| controller.request.xhr? ? false : "application" }

  def index

    @cataloging_user = Cataloging::User.find(params[:user_id])

    @month_start_date = Date.new(params[:year].to_i, params[:month].to_i, 1)
    entries = @cataloging_user.entries.sorted.in_month(@month_start_date)
    @grouped_entries = entries.group_by { |e| [e.type, e.location_id, e.format_id, e.transfer_type_id, e.special_procedure_type_id] }

    if @cataloging_user.default_location_id.blank?
      @default_formats = Cataloging::Format.sorted
    else
      location = Cataloging::Location.find(@cataloging_user.default_location_id)
      @default_formats = Cataloging::Format.valid_for_location(location)
    end

    @default_entry_number = "0"

  end



  def create

    @cataloging_user = Cataloging::User.find(params[:user_id])
    
    #add new entry
    entry = entry_type.new(params[:cataloging_entry])
    entry.month_start_date=params[:month_start_date]
    @cataloging_user.entries << entry
    

    if entry.save
      # get local values to update partial only
      @month_start_date = params[:month_start_date]
      entries = @cataloging_user.entries.sorted.in_month(@month_start_date)
      @grouped_entries = entries.group_by { |e| [e.type, e.location_id, e.format_id, e.transfer_type_id, e.special_procedure_type_id] }
      
      flash.now[:success] = "Your entry has been added."
      #expire_fragment ({controller: 'entries_controller', action: 'show', partial: underscore_name})
      render partial: underscore_name, locals: {grouped_entries: @grouped_entries.select{|k,v| k[0] == entry_type.to_s}, u_name: underscore_name }, :content_type => 'text/html'

    # theoretically won't happen often since javascript checks are enabled
    else
      flash[:error] = entry.errors.full_messages
      redirect_to :back
    end

  end


  def show

    @cataloging_user = Cataloging::User.find(params[:user_id])

    @month_start_date = Date.new(params[:year].to_i, params[:month].to_i, 1)
    entries = @cataloging_user.entries.sorted.in_month(@month_start_date)
    @grouped_entries = entries.group_by { |e| [e.type, e.location_id, e.format_id, e.transfer_type_id, e.special_procedure_type_id] }

    @original_cataloging_entries = @grouped_entries.select{|k,v| k[0] == "Cataloging::OriginalCataloging"}
    @copy_cataloging_entries = @grouped_entries.select{|k,v| k[0] == "Cataloging::CopyCataloging"}
    @volume_addition_entries = @grouped_entries.select{|k,v| k[0] == "Cataloging::VolumeAddition"}
    @withdrawal_entries = @grouped_entries.select{|k,v| k[0] == "Cataloging::Withdrawal"}
    @transfer_entries = @grouped_entries.select{|k,v| k[0] == "Cataloging::Transfer"}
    @special_procedure_entries = @grouped_entries.select{|k,v| k[0] == "Cataloging::SpecialProcedure"}

    @new_cataloging_entry = @cataloging_user.entries.new

  end  

  private
	 def entry_type
			params[:type].camelize.constantize
	 end

   def underscore_name
      entry_type.to_s.demodulize.underscore
   end

   def cataloging_user?
    current_cataloging_user = Cataloging::User.find_by_username(current_user.netid);
    if current_cataloging_user.nil?
      flash[:error] = "You are not authorized to view that page."
      redirect_to root_path
    end
   end


end
