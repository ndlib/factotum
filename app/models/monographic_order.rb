class MonographicOrder < ActiveRecord::Base
  validates_presence_of :title, :author, :publisher, :publication_year, :publication_place, :fund, :cataloging_location
  validates_presence_of :rush_order_reason, :if => :rush_order?
end
