class Cataloging::Reports::Institutional < Cataloging::Report

  def entries
    entries = Cataloging::Entry.select("cataloging_locations.id as location_id, cataloging_locations.name   as location_name, 
      cataloging_formats.id     as format_id,   cataloging_formats.name as format_name, 
      date_format(month_start_date,'%b-%y') month,

      sum(if(type='Cataloging::OriginalCataloging' OR type='Cataloging::CopyCataloging', titles_count,0)) - sum(if(type='Cataloging::Withdrawal', titles_count,0)) as net_titles,
      sum(if(type='Cataloging::OriginalCataloging' OR type='Cataloging::CopyCataloging' OR type='Cataloging::VolumeAddition', volumes_count,0)) - sum(if(type='Cataloging::Withdrawal', volumes_count,0)) as net_pieces,
      sum(if(type='Cataloging::OriginalCataloging',titles_count,0)) as original_titles,
      sum(if(type='Cataloging::OriginalCataloging',volumes_count,0)) as original_pieces,
      sum(if(type='Cataloging::CopyCataloging',titles_count,0)) as copy_titles,
      sum(if(type='Cataloging::CopyCataloging',volumes_count,0)) as copy_pieces,
      sum(if(type='Cataloging::VolumeAddition',volumes_count,0)) as addition_titles,
      sum(if(type='Cataloging::Withdrawal',titles_count,0)) as withdrawal_titles,
      sum(if(type='Cataloging::Withdrawal',volumes_count,0)) as withdrawal_pieces")

    entries = entries.joins(:location).joins(:format)

    entries = entries.where(location_id: @params[:location_id]) unless @params[:location_id].blank? || @params[:location_id].include?("")
    entries = entries.where(format_id: @params[:format_id]) unless @params[:format_id].blank? || @params[:format_id].include?("")
    entries = entries.where(month_start_date: @entry_date_start..@entry_date_end)
    

    entries = entries.group("cataloging_locations.id, cataloging_locations.name, cataloging_formats.id, cataloging_formats.name, month_start_date ")
    entries = entries.order("cataloging_locations.name, cataloging_formats.name, month_start_date asc")

    entries = entries.to_a.map(&:serializable_hash)
  end



  def sum_by_field
    "format_name"
  end




  def entries_grouped

    entries.group_by do |e|
      [e["location_id"], e["location_name"]]
    end

  end



  
  
end

