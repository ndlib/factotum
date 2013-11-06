class Cataloging::SpecialProcedureType < ActiveRecord::Base

  has_many :entries, :dependent => :restrict
  
  validates :name, presence: true 
  validates_uniqueness_of :name

  def self.sorted
    order(:name)
  end



end
