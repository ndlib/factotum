class Maps::Request
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :map_name, :scale, :type, :date_needed, :note, :user

  validates_presence_of :map_name, :scale, :date_needed, :message => 'Cannot be blank'
  validates_format_of :date_needed, :with => /\A\d{2}\/\d{2}\/\d{4}\z/, :message => 'Incorrect date format'


  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end


  def persisted?
    false
  end

end

