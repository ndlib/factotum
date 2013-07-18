class Cataloging::User < ActiveRecord::Base
 
  has_one :location, :class_name => Cataloging::Location, :foreign_key => "default_location_id"
  has_one :format, :class_name => Cataloging::Format, :foreign_key => "default_format_id"
  has_many :entries, :class_name => Cataloging::Entry
  has_many :subordinates, :class_name => Cataloging::User, :foreign_key => "supervisor_id"
  belongs_to :supervisor, :class_name => Cataloging::User

  validates_uniqueness_of :username  

  def to_s
    display_name.to_s
  end

  def display_name
    if self.name.present?
      self.name
    else
      self.username
    end
  end

  def cust_entries
    self.entries
  end

binding.pry

end
