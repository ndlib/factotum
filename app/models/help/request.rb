class Help::Request
  include ActiveModel::Validations
  include ActiveModel::Conversion  
  extend ActiveModel::Naming

  attr_accessor :code, :user_name, :user_email, :user_status, :request, :service_point_id

  validates_presence_of :code, :user_name, :user_email, :request, :service_point_id


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

