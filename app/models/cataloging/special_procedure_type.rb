class Cataloging::SpecialProcedureType < ActiveRecord::Base

  has_many :entries, :dependent => :restrict_with_exception

  validates :name, presence: true
  validates_uniqueness_of :name

  def self.sorted
    order(:name)
  end



end
