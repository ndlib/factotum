class EmployeeShowView
  include RailsHelpers

  delegate :id, :first_name, :last_name, :display_name, :principles, :descendents, :emails, :phones, :addresses, :primary_email, :primary_phone, :primary_address, :employee_units, :departmental_units, :organizational_units, :employee_unit_title, :subjects, :supervisor, :subordinates, :photo, :employee_status, :about_text, :to => :employee

  attr_accessor :employee

  def initialize(employee)
    @employee = employee
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
