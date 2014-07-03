class Cataloging::Reports::SpecialProcedures < Cataloging::Report

  def entries
    entries = Cataloging::Entry.select("cataloging_special_procedure_types.name special_procedure_name,
      cataloging_users.name user_name, 
      date_format(month_start_date,'%b-%y') month_year,
      sum(pieces_count) as special_pieces")

    entries = entries.joins(:special_procedure_type).joins(:user)

    entries = entries.where(month_start_date: @entry_date_start..@entry_date_end)
    entries = entries.where(user_id: @employees_to_show.to_a.map { |s| s.id })

    entries = entries.group("cataloging_special_procedure_types.id, cataloging_special_procedure_types.name, cataloging_users.id, cataloging_users.name, month_start_date")
    entries = entries.order("cataloging_special_procedure_types.name, cataloging_users.name, month_start_date asc")

    @@cols = entries.first.attributes.map{ |k,v| k } if !entries.empty? 
    entries = entries.to_a.map(&:serializable_hash)   


  end



  def sum_by_field
    "user_name"
  end


  def entries_grouped

    entries.group_by do |e|
      e["special_procedure_name"]
    end

  end



  
  
end

