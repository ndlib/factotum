class Cataloging::SpecialProcedureType < ActiveRecord::Base

  validates :name, presence: true 
  validates_uniqueness_of :name

  def self.alphabetical
    order(:name)
  end



end
