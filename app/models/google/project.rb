class Google::Project


  def initialize(worksheet, row)
    @worksheet = worksheet
    @row = row
    @requester_name = requester_name
    @requester_email = requester_email
    @name = name
    @description = description
    @customers = customers
    @responsible_program = responsible_program
    @start_date = start_date
    @end_date = end_date
    @priority = priority
    @product_owner = product_owner
    @division_pm = division_pm
    @percent_complete = percent_complete
    @staff_allocated = staff_allocated
    @jira_link = jira_link
    @status = status
  end


  def requester_name
    req_name = @worksheet[@row, ENV["project_requester_name"].to_i]
    req_name.blank? ? 'Not Specified' : req_name
  end


  def requester_email
    req_email = @worksheet[@row, ENV["project_requester_email"].to_i]
    req_email.blank? ? 'Not Specified' : req_email
  end


  def name
    proj_name = @worksheet[@row, ENV["project_name"].to_i]
    proj_name.blank? ? 'Not Specified' : proj_name
  end


  def description
    proj_desc = @worksheet[@row, ENV["project_description"].to_i]
    proj_desc.blank? ? 'Not Specified' : proj_desc
  end


  def customers
    proj_cust = @worksheet[@row, ENV["project_customers"].to_i]
    proj_cust.blank? ? 'Not Specified' : proj_cust
  end


  def responsible_program
    proj_res_prog = @worksheet[@row, ENV["project_responsible_program"].to_i]
    proj_res_prog.blank? ? 'Not Specified' : proj_res_prog
  end


  def start_date
    proj_start_date = @worksheet[@row, ENV["project_start_date"].to_i]
    proj_start_date.blank? ? 'Not Specified' : Date.strptime(proj_start_date, '%m/%d/%Y')
  end


  def end_date
    proj_end_date = @worksheet[@row, ENV["project_end_date"].to_i]
    proj_end_date.blank? ? 'Not Specified' : Date.strptime(proj_end_date, '%m/%d/%Y')
  end


  def priority
    proj_priority = @worksheet[@row, ENV["project_priority"].to_i]
    proj_priority.blank? ? 'Not Specified' : proj_priority
  end


  def product_owner
    proj_prod_owner = @worksheet[@row, ENV["project_product_owner"].to_i]
    proj_prod_owner.blank? ? 'Not Specified' : proj_prod_owner
  end


  def division_pm
    proj_div_pm = @worksheet[@row, ENV["project_division_pm"].to_i]
    proj_div_pm.blank? ? 'Not Specified' : proj_div_pm
  end


  def percent_complete
    proj_percent_comp = @worksheet[@row, ENV["project_percent_complete"].to_i]
    proj_percent_comp.blank? ? 'Not Specified' : proj_percent_comp
  end


  def staff_allocated
    proj_staff_alloc = @worksheet[@row, ENV["project_staff_allocated"].to_i]
    proj_staff_alloc.blank? ? 'Not Specified' : proj_staff_alloc
  end


  def jira_link
    proj_jira_link = @worksheet[@row, ENV["project_jira_link"].to_i]
    proj_jira_link.blank? ? 'Not Specified' : proj_jira_link
  end


  def status
    proj_status = @worksheet[@row, ENV["project_status"].to_i]
    proj_status.blank? ? 'Not Specified' : proj_status
  end

end
