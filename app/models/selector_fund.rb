class SelectorFund < ActiveRecord::Base
  validates_uniqueness_of :name, :context => :selector_id
  
  belongs_to :selector, :class_name => 'Selector', :foreign_key => 'netid', :primary_key => 'netid'
end
