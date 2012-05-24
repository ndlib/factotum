class SelectorFund < ActiveRecord::Base
  FUND_NAME_REGEXP = /^[A-Z0-9]+$/
  belongs_to :selector, :class_name => 'Selector', :foreign_key => 'netid', :primary_key => 'netid'

  before_validation :clean_name

  validates_presence_of :selector
  validates_uniqueness_of :name, :scope => :netid
  validates :name,
            :format => { :with => FUND_NAME_REGEXP}

  private
    def clean_name
      self.name = self.name.to_s.strip.upcase
    end
end
