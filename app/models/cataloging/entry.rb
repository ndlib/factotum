class Cataloging::Entry < ActiveRecord::Base

	belongs_to :user, :class_name => "Cataloging::User"
	belongs_to :location, :class_name => "Cataloging::Location"
	belongs_to :format, :class_name => "Cataloging::Format"
	belongs_to :transfer_type, :class_name => "Cataloging::TransferType"
	belongs_to :special_procedure_type, :class_name => "Cataloging::SpecialProcedureType"

	validates :user_id, presence: true
	validates :entry_date, presence: true
	validates :month_start_date, presence: true
	validates :location_id, presence: true
	validates :format_id, presence: true
	validates :type, presence: true

	def self.sorted_entry_months
		group('month_start_date')
	    order('month_start_date desc')
	end


end
