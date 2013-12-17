class DepartmentRow

  delegate :id, :children_departments, :parent_department, :name, :websites, :faxes, :managers, :to => :department

  attr_accessor :department

  def initialize(department)
    @department = department
  end


  def phones
    phones = []
    if @department.phones.blank?
        @department.managers.each do |manager|
          manager.phones.each do |phone|
            phone.is_primary? ? phones.push(phone) : next
          end
        end
    else
      @department.phones.each do |phone|
        phone.is_primary? ? phones.push(phone) : nil
      end
    end
    return phones
  end


  def emails
    emails = []
    if @department.emails.blank?
        @department.managers.each do |manager|
          manager.emails.each do |email|
            email.is_primary? ? emails.push(email) : next
          end
        end
    else
      @department.emails.each do |email|
        email.is_primary? ? emails.push(email) : nil
      end
    end
    return emails
  end


  def addresses
    addresses = []
    if @department.addresses.blank?
        @department.managers.each do |manager|
          manager.addresses.each do |address|
            address.is_primary? ? addresses.push(address) : next
          end
        end
    else
      @department.addresses.each do |address|
        address.is_primary? ? addresses.push(address) : nil
      end
    end
    return addresses
  end

end
