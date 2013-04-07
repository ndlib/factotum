class Help::Request
  include ActiveModel::Validations
  include ActiveModel::Conversion  
  extend ActiveModel::Naming

  attr_accessor :user_name, :user_email, :user_status, :request, :service_point_id

  validates_presence_of :user_name, :user_email, :user_status, :request, :service_point_id


  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def service_point
    Availability::ServicePoint.find(service_point_id)
  end


  def persisted?  
    false  
  end

end

