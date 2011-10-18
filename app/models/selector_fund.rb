class SelectorFund < ActiveRecord::Base
  belongs_to :selector, :class_name => 'Selector', :foreign_key => 'netid', :primary_key => 'netid'
end
