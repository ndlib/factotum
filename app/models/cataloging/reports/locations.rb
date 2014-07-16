class Cataloging::Reports::Locations < Cataloging::Report
  
  def entries
    entries = Cataloging::Entry.select("cataloging_locations.name   as location_name, 
      ifnull(cataloging_formats.name, 'Transfer (Format Not Available)') as format_name, 
      date_format(month_start_date,'%b-%y') month_year,
      sum(if(type='Cataloging::OriginalCataloging' OR type='Cataloging::CopyCataloging', titles_count,0)) - sum(if(type='Cataloging::Withdrawal', titles_count,0)) as net_titles,
      sum(if(type='Cataloging::OriginalCataloging' OR type='Cataloging::CopyCataloging' OR type='Cataloging::VolumeAddition', volumes_count,0)) +  sum(if(type='Cataloging::Transfer' AND to_location_id=cataloging_locations.id, pieces_count,0))  - sum(if(type='Cataloging::Withdrawal', volumes_count,0)) - sum(if(type='Cataloging::Transfer' AND from_location_id=cataloging_locations.id, pieces_count,0)) as net_pieces,
      sum(if(type='Cataloging::OriginalCataloging',titles_count,0)) as original_titles,
      sum(if(type='Cataloging::OriginalCataloging',volumes_count,0)) as original_pieces,
      sum(if(type='Cataloging::CopyCataloging',titles_count,0)) as copy_titles,
      sum(if(type='Cataloging::CopyCataloging',volumes_count,0)) as copy_pieces,
      sum(if(type='Cataloging::VolumeAddition',volumes_count,0)) as add_pieces,
      sum(if(type='Cataloging::Withdrawal',titles_count,0)) as withdrawal_titles,
      sum(if(type='Cataloging::Withdrawal',volumes_count,0)) as withdrawal_pieces,
      sum(if(type='Cataloging::Transfer' AND to_location_id=cataloging_locations.id, pieces_count,0)) as transfer_in_count,
      sum(if(type='Cataloging::Transfer' AND from_location_id=cataloging_locations.id, pieces_count,0)) as transfer_out_count")

    entries = entries.joins("LEFT JOIN `cataloging_transfer_types` ON cataloging_transfer_types.id = transfer_type_id")
    entries = entries.joins("INNER JOIN `cataloging_locations` ON (cataloging_locations.id = location_id OR cataloging_locations.id = from_location_id OR cataloging_locations.id = to_location_id)")
    entries = entries.joins("LEFT JOIN `cataloging_formats` ON cataloging_formats.id = format_id")

    entries = entries.where("cataloging_locations.id IN (?)", @params[:location_id]) unless @params[:location_id].blank? || @params[:location_id].include?("")
    
    entries = entries.where(format_id: @params[:format_id]) unless @params[:format_id].blank? || @params[:format_id].include?("")
    entries = entries.where(month_start_date: @entry_date_start..@entry_date_end)
    

    entries = entries.group("cataloging_locations.name, cataloging_formats.name, month_start_date ")
    entries = entries.order("cataloging_locations.name, cataloging_formats.name, month_start_date asc")

    if !entries.empty? then
      @@cols = entries.first.attributes.map{ |k,v| k }
    end
    entries = entries.to_a.map(&:serializable_hash)   

    
  end


  def sum_by_field
    "format_name"
  end


  def entries_grouped
    entries.group_by do |e|
      e["location_name"]
    end
  end

  def to_csv(options = {})
    super
  end

  
  
end

