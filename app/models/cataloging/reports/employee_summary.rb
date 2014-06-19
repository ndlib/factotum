class Cataloging::Reports::EmployeeSummary < Cataloging::Report

  def entries
    entries = Cataloging::Entry.select("cataloging_users.id user_id, cataloging_users.name user_name, 
      cataloging_formats.id as format_id, ifnull(cataloging_formats.name, if(type='Cataloging::Transfer', '(Transfer)', concat('Special Procedure - ', cataloging_special_procedure_types.name))) as format_name,
      sum(if(type='Cataloging::OriginalCataloging',titles_count,0)) as original_titles,
      sum(if(type='Cataloging::OriginalCataloging',volumes_count,0)) as original_pieces,
      sum(if(type='Cataloging::CopyCataloging',titles_count,0)) as copy_titles,
      sum(if(type='Cataloging::CopyCataloging',volumes_count,0)) as copy_pieces,
      sum(if(type='Cataloging::VolumeAddition',volumes_count,0)) as addition_titles,
      sum(if(type='Cataloging::Withdrawal',titles_count,0)) as withdrawal_titles,
      sum(if(type='Cataloging::Withdrawal',volumes_count,0)) as withdrawal_pieces,
      sum(if(type='Cataloging::SpecialProcedure', pieces_count,0)) as pieces_count,
      sum(if(type='Cataloging::Transfer', pieces_count,0)) as transfer_in_count,
      sum(if(type='Cataloging::Transfer', pieces_count,0)) as transfer_out_count")

    entries = entries.joins("LEFT JOIN `cataloging_transfer_types` ON cataloging_transfer_types.id = transfer_type_id")
    entries = entries.joins("LEFT JOIN `cataloging_special_procedure_types` ON cataloging_special_procedure_types.id = special_procedure_type_id")
    entries = entries.joins("LEFT JOIN `cataloging_formats` ON cataloging_formats.id = format_id")
    entries = entries.joins(:user)

    entries = entries.where(user_id: @employees_to_show.to_a.map { |s| s.id })
    entries = entries.where(format_id: @params[:format_id]) unless @params[:format_id].blank? || @params[:format_id].include?("")


    entries = entries.group("cataloging_users.id, cataloging_users.name, format_name")
    entries = entries.order("cataloging_users.name, format_name, month_start_date asc")

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

