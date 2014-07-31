class Cataloging::Reports::EmployeeDetail < Cataloging::Report

  def entries
    entries = Cataloging::Entry.select("cataloging_users.name user_name, 
      CASE type 
        WHEN 'Cataloging::Transfer' THEN concat('Transfer - ', fcl.name, ' to ', tcl.name)
        WHEN 'Cataloging::SpecialProcedure' THEN concat('Special Procedure - ', cataloging_special_procedure_types.name)
        ELSE concat(cataloging_formats.name, ' - ', cataloging_locations.name)
      END as format_name, 
      date_format(month_start_date,'%b-%y') month_year,
      sum(if(type='Cataloging::OriginalCataloging',titles_count,0)) as original_titles,
      sum(if(type='Cataloging::OriginalCataloging',volumes_count,0)) as original_pieces,
      sum(if(type='Cataloging::CopyCataloging',titles_count,0)) as copy_titles,
      sum(if(type='Cataloging::CopyCataloging',volumes_count,0)) as copy_pieces,
      sum(if(type='Cataloging::VolumeAddition',volumes_count,0)) as add_pieces,
      sum(if(type='Cataloging::Withdrawal',titles_count,0)) as withdrawal_titles,
      sum(if(type='Cataloging::Withdrawal',volumes_count,0)) as withdrawal_pieces,
      sum(if(type='Cataloging::SpecialProcedure', pieces_count,0)) as special_pieces,
      sum(if(type='Cataloging::Transfer', pieces_count,0)) as transfer_count")

    entries = entries.joins("LEFT JOIN (`cataloging_transfer_types`
                                INNER JOIN cataloging_locations fcl ON cataloging_transfer_types.from_location_id = fcl.id
                                INNER JOIN cataloging_locations tcl ON cataloging_transfer_types.to_location_id = tcl.id) 
                              ON cataloging_transfer_types.id = transfer_type_id")
    entries = entries.joins("LEFT JOIN `cataloging_special_procedure_types` ON cataloging_special_procedure_types.id = special_procedure_type_id")
    entries = entries.joins("LEFT JOIN `cataloging_locations` ON cataloging_locations.id = location_id")
    entries = entries.joins("LEFT JOIN `cataloging_formats` ON cataloging_formats.id = format_id")
    entries = entries.joins(:user)

    entries = entries.where(user_id: @employees_to_show.to_a.map { |s| s.id })
    entries = entries.where("cataloging_locations.id IN (?)", @params[:location_id]) unless @params[:location_id].blank? || @params[:location_id].include?("")
    entries = entries.where(format_id: @params[:format_id]) unless @params[:format_id].blank? || @params[:format_id].include?("")
    entries = entries.where(month_start_date: @entry_date_start..@entry_date_end)


    entries = entries.group("cataloging_users.name, cataloging_locations.name, cataloging_formats.name, cataloging_transfer_types.id, cataloging_special_procedure_types.id, month_start_date ")
    entries = entries.order("cataloging_users.name, format_name, cataloging_locations.name, month_start_date asc")


    #@@cols = entries.first.attributes.map{ |k,v| k } if !entries.empty? 
    entries = entries.to_a.map(&:serializable_hash)
  end



  def sum_by_field
    "format_name"
  end


  def entries_grouped

    entries.group_by do |e|
      e["user_name"]
    end

  end


  def self.to_csv
    super
  end
  
  
end

