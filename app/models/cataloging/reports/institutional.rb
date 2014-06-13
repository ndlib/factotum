class Cataloging::Reports::Institutional < Cataloging::Report

  def entries
    entries = Cataloging::Entry.select("cataloging_locations.id as location_id, cataloging_locations.name   as location_name, 
      cataloging_formats.id     as format_id,   cataloging_formats.name as format_name, 
      date_format(month_start_date,'%b-%y') month,
      sum(if(type='Cataloging::OriginalCataloging',titles_count,0)) as original_titles,
      sum(if(type='Cataloging::OriginalCataloging',volumes_count,0)) as original_pieces,
      sum(if(type='Cataloging::CopyCataloging',titles_count,0)) as copy_titles,
      sum(if(type='Cataloging::CopyCataloging',volumes_count,0)) as copy_pieces,
      sum(if(type='Cataloging::VolumeAddition',volumes_count,0)) as addition_volumes,
      sum(if(type='Cataloging::Withdrawal',titles_count,0)) as withdrawal_titles,
      sum(if(type='Cataloging::Withdrawal',volumes_count,0)) as withdrawal_pieces")

    entries = entries.joins(:location).joins(:format)

    entries = entries.where(location_id: @params[:location_id]) unless @params[:location_id].blank?
    entries = entries.where(format_id: @params[:format_id]) unless @params[:format_id].blank?
    entries = entries.where(month_start_date: @entry_date_start..@entry_date_end)
    

    entries = entries.group("cataloging_locations.id, cataloging_locations.name, cataloging_formats.id, cataloging_formats.name, month_start_date ")
    entries = entries.order("cataloging_locations.name, cataloging_formats.name, month_start_date desc")

    entries = entries.to_a.map(&:serializable_hash)
  end


  def entries_grouped
    entries.group_by do |e|
      [e["location_id"], e["location_name"], e["format_id"], e["format_name"]]
    end
  end

  def entries_grouped_with_header
    entries_grouped.group_by do |e| 
      #binding.pry
      [e[0][1]]

    end
  end

  
end

