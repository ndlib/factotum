class Cataloging::Entry < ActiveRecord::Base
	belongs_to :user
  	belongs_to :location
  	belongs_to :format
  	belongs_to :procedure, :polymorphic => true
  	belongs_to :transfer_type	


end
