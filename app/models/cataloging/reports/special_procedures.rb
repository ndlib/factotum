class Cataloging::Reports::SpecialProcedures < Cataloging::Report

  def entries
    entries = Cataloging::Entry.select("cataloging_special_procedure_types.id special_procedure_type_id, cataloging_special_procedure_types.name special_procedure_name,
      cataloging_users.id user_id, cataloging_users.name user_name, 
      date_format(month_start_date,'%b-%y') month,
      sum(pieces_count) as pieces_count")

    entries = entries.joins(:special_procedure_type).joins(:user)

    entries = entries.where(month_start_date: @entry_date_start..@entry_date_end)
    entries = entries.where(user_id: @all_subordinates.to_a.map { |s| s.id })

    entries = entries.group("cataloging_special_procedure_types.id, cataloging_special_procedure_types.name, cataloging_users.id, cataloging_users.name, month_start_date")
    entries = entries.order("cataloging_special_procedure_types.name, cataloging_users.name, month_start_date asc")

  end



  def sum_by_field
    "user_name"
  end


  def entries_grouped

    entries.group_by do |e|
      [e["special_procedure_type_id"], e["special_procedure_name"]]
    end

  end



  
  
end

