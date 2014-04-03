class EmployeeShowView
  include RailsHelpers

  delegate :id, :first_name, :last_name, :employee_rank, :employee_status, :start_date, :updated_at, :supervisor, :display_name, :principles, :descendents, :emails, :phones, :addresses, :webpages, :primary_email, :primary_phone, :primary_fax, :primary_address, :employee_units, :departmental_units, :organizational_units, :employee_unit_title, :subjects, :supervisor, :subordinates, :photo, :employee_status, :about_text, :to => :employee

  attr_accessor :employee

  def initialize(employee, permission)
    @employee = employee
    @permission = permission
  end



  def department_display
    departments = Hash.new
    dt_list = DirectoryDepartment.department_types

    if @permission.current_user_is_library_employee?
      @employee.departmental_units.each do |du|
        du.self_and_parents.reverse.each_with_index do |d,i|
          departments[d] = dt_list[i]
        end
      end


      #display only the top two if their department is either division or administration (first two in department_types list)
      if departments.size == 2
        departments.shift
      else
        keepers = dt_list[2..5]
        departments.keep_if {|k, v| keepers.include? v }
      end  


    else
      @employee.departmental_units.each do |d|
        departments[d] = nil
      end
    end

    return departments

  end  



  def photo_url

    if !@employee.hide_photo_ind || @permission.current_user_is_library_employee?
      # check that photo exists
      if !@employee.photo.empty?
        res = Net::HTTP.get_response(URI.parse(@employee.photo))

        if !res.nil? and res.code.to_i >= 200 and res.code.to_i < 400 #good codes will be between 200 - 399
          return @employee.photo
        end
      end
    end
  end



  def render_about_text
    if !@employee.about_text.nil?
      helpers.raw markdown_parser.render(@employee.about_text)
    end
  end


  def markdown_parser
    Redcarpet::Markdown.new(Redcarpet::Render::HTML.new(:hard_wrap => true))
  end

end
