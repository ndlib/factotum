class Cataloging::Reports::EmployeeDetail < Cataloging::Report

  def entries
    entries = Cataloging::Entry.select("cataloging_users.id user_id, cataloging_users.name user_name, 
      cataloging_formats.id as format_id, ifnull(cataloging_formats.name, if(type='Cataloging::Transfer', '(Transfer)', '(Special Procedure)')) as format_name, 
      ifnull(cataloging_locations.name, cataloging_special_procedure_types.name) as display_location_name, 
      date_format(month_start_date,'%b-%y') month,
      sum(if(type='Cataloging::OriginalCataloging',titles_count,0)) as original_titles,
      sum(if(type='Cataloging::OriginalCataloging',volumes_count,0)) as original_pieces,
      sum(if(type='Cataloging::CopyCataloging',titles_count,0)) as copy_titles,
      sum(if(type='Cataloging::CopyCataloging',volumes_count,0)) as copy_pieces,
      sum(if(type='Cataloging::VolumeAddition',volumes_count,0)) as addition_titles,
      sum(if(type='Cataloging::Withdrawal',titles_count,0)) as withdrawal_titles,
      sum(if(type='Cataloging::Withdrawal',volumes_count,0)) as withdrawal_pieces,
      sum(if(type='Cataloging::SpecialProcedure', pieces_count,0)) as pieces_count,
      sum(if(type='Cataloging::Transfer' AND to_location_id=cataloging_locations.id, pieces_count,0)) as transfer_in_count,
      sum(if(type='Cataloging::Transfer' AND from_location_id=cataloging_locations.id, pieces_count,0)) as transfer_out_count")

    entries = entries.joins("LEFT JOIN `cataloging_transfer_types` ON cataloging_transfer_types.id = transfer_type_id")
    entries = entries.joins("LEFT JOIN `cataloging_special_procedure_types` ON cataloging_special_procedure_types.id = special_procedure_type_id")
    entries = entries.joins("LEFT JOIN `cataloging_locations` ON (cataloging_locations.id = location_id OR cataloging_locations.id = from_location_id OR cataloging_locations.id = to_location_id)")
    entries = entries.joins("LEFT JOIN `cataloging_formats` ON cataloging_formats.id = format_id")
    entries = entries.joins(:user)

    entries = entries.where(user_id: @employees_to_show.to_a.map { |s| s.id })
    entries = entries.where("cataloging_locations.id IN (?)", @params[:location_id]) unless @params[:location_id].blank? || @params[:location_id].include?("")
    entries = entries.where(format_id: @params[:format_id]) unless @params[:format_id].blank? || @params[:format_id].include?("")
    entries = entries.where(month_start_date: @entry_date_start..@entry_date_end)


    entries = entries.group("cataloging_users.id, cataloging_users.name, cataloging_locations.id, cataloging_locations.name, cataloging_formats.id, cataloging_formats.name, month_start_date ")
    entries = entries.order("cataloging_users.name, cataloging_formats.name, cataloging_locations.name, month_start_date asc")

    entries = entries.to_a.map(&:serializable_hash)
  end



  def sum_by_field
    "format_name"
  end


  def entries_grouped

    entries.group_by do |e|
      [e["user_id"], e["user_name"]]
    end

  end



  
  
end

