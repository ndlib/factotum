class Cataloging::Reports::EmployeeSummary < Cataloging::Report

  def entries

    entries = Cataloging::Entry.select("cataloging_users.name user_name, 
      CASE type 
        WHEN 'Cataloging::Transfer' THEN concat('Transfer - ', fcl.name, ' to ', tcl.name)
        WHEN 'Cataloging::SpecialProcedure' THEN concat('Special Procedure - ', cataloging_special_procedure_types.name)
        ELSE cataloging_formats.name
      END as additional_display, 
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
    entries = entries.joins("LEFT JOIN `cataloging_formats` ON cataloging_formats.id = format_id")
    entries = entries.joins(:user)

    entries = entries.where(user_id: @employees_to_show.to_a.map { |s| s.id })
    entries = entries.where(format_id: @params[:format_id]) unless @params[:format_id].blank? || @params[:format_id].include?("")


    entries = entries.group("cataloging_users.name, additional_display")
    entries = entries.order("cataloging_users.name, additional_display, month_start_date asc")


    #@@cols = entries.first.attributes.map{ |k,v| k } if !entries.empty? 
    entries = entries.to_a.map(&:serializable_hash)

  end



  def sum_by_field
    "format_name"
  end



  def entries_grouped
    entries_with_percent.group_by do |e|
      e["user_name"]
    end
  end

  def summed_entries_grouped
    summed_entries.group_by do |e|
      e["additional_display"]
    end
  end  


  def entries_with_percent
    entries.map do |h|
      percent_hash=Hash.new 
      h.each do |k,v|
        if k!="user_name" and k!="additional_display" and v>0 and !summed_entries_grouped[h["additional_display"]].nil? then
          percent_hash[k + "_percent"] = "#{((v.to_f / summed_entries_grouped[h["additional_display"]].first[k]) * 100).round}%"
        end
      end

      h.merge(percent_hash)

    end


  end





  def summed_entries
    summed_entries = Cataloging::Entry.select("
      CASE type 
        WHEN 'Cataloging::Transfer' THEN concat('Transfer - ', tcl.name, ' to ', fcl.name)
        WHEN 'Cataloging::SpecialProcedure' THEN concat('Special Procedure - ', cataloging_special_procedure_types.name)
        ELSE cataloging_formats.name
      END as additional_display, 
      sum(if(type='Cataloging::OriginalCataloging',titles_count,0)) as original_titles,
      sum(if(type='Cataloging::OriginalCataloging',volumes_count,0)) as original_pieces,
      sum(if(type='Cataloging::CopyCataloging',titles_count,0)) as copy_titles,
      sum(if(type='Cataloging::CopyCataloging',volumes_count,0)) as copy_pieces,
      sum(if(type='Cataloging::VolumeAddition',volumes_count,0)) as add_pieces,
      sum(if(type='Cataloging::Withdrawal',titles_count,0)) as withdrawal_titles,
      sum(if(type='Cataloging::Withdrawal',volumes_count,0)) as withdrawal_pieces,
      sum(if(type='Cataloging::SpecialProcedure', pieces_count,0)) as special_pieces,
      sum(if(type='Cataloging::Transfer', pieces_count,0)) as transfer_count")

    summed_entries = summed_entries.joins("LEFT JOIN (`cataloging_transfer_types`
                                INNER JOIN cataloging_locations fcl ON cataloging_transfer_types.from_location_id = fcl.id
                                INNER JOIN cataloging_locations tcl ON cataloging_transfer_types.to_location_id = tcl.id) 
                              ON cataloging_transfer_types.id = transfer_type_id")
    summed_entries = summed_entries.joins("LEFT JOIN `cataloging_special_procedure_types` ON cataloging_special_procedure_types.id = special_procedure_type_id")
    summed_entries = summed_entries.joins("LEFT JOIN `cataloging_formats` ON cataloging_formats.id = format_id")
    summed_entries = summed_entries.joins(:user)

    summed_entries = summed_entries.where(user_id: @employees_to_show.to_a.map { |s| s.id })
    summed_entries = summed_entries.where(format_id: @params[:format_id]) unless @params[:format_id].blank? || @params[:format_id].include?("")


    summed_entries = summed_entries.group("additional_display")

    summed_entries = summed_entries.to_a.map(&:serializable_hash)

  end


  
  
end

