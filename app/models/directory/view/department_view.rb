class DepartmentView
  include RailsHelpers
  
  delegate :id, :children_departments, :parent_department, :parents, :name, :employees, :children_units, :websites, :faxes, :managers, :members, :to => :department

  attr_accessor :department

  def initialize(department)
    @department = department
  end


  def phones
    phones = []
    if @department.phones.blank?
        @department.managers.each do |manager|
          manager.phones.each do |phone|
            phone.is_primary? ? phones.push(phone.contact_information) : next
          end
        end
    else
      @department.phones.each do |phone|
        phone.is_primary? ? phones.push(phone.contact_information) : nil
      end
    end
    return phones
  end


  def websites
    websites = []
    unless @department.websites.blank?
      @department.websites.each do |website|
        website.is_primary? ? websites.push(website.contact_information) : nil
      end
    end
    return websites
  end


  def emails
    emails = []
    if @department.emails.blank?
        @department.managers.each do |manager|
          manager.emails.each do |email|
            email.is_primary? ? emails.push(email.contact_information) : next
          end
        end
    else
      @department.emails.each do |email|
        email.is_primary? ? emails.push(email.contact_information) : nil
      end
    end
    return emails
  end


  def addresses
    addresses = []
    if @department.addresses.blank?
        @department.managers.each do |manager|
          manager.addresses.each do |address|
            address.is_primary? ? addresses.push(address.contact_information) : next
          end
        end
    else
      @department.addresses.each do |address|
        address.is_primary? ? addresses.push(address.contact_information) : nil
      end
    end
    return addresses
  end


  def render_about_text
    if !@department.about_text.nil?
      helpers.raw markdown_parser.render(@department.about_text)
    else
      nil
    end
  end


  def markdown_parser
    Redcarpet::Markdown.new(Redcarpet::Render::HTML.new(:hard_wrap => true))
  end

end
