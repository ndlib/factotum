class Cataloging::Entry < ActiveRecord::Base

	belongs_to :user, :class_name => "Cataloging::User"
	belongs_to :location, :class_name => "Cataloging::Location"
	belongs_to :format, :class_name => "Cataloging::Format"
	belongs_to :transfer_type, :class_name => "Cataloging::TransferType"
	belongs_to :special_procedure_type, :class_name => "Cataloging::SpecialProcedureType"

	validates :user_id, presence: true
	validates :month_start_date, presence: true
	validates :type, presence: true

	scope :sorted, order('month_start_date desc, location_id, format_id, created_at')
	scope :months, select('distinct month_start_date')
	scope :locations_formats, select('distinct location_id, format_id')

	def self.in_month(month_date) 
		where("month_start_date = ?", month_date)
	end

	def self.by_location_and_format(location_id, format_id) 
		where("location_id = ? and format_id = ?", location_id, format_id)
	end


end
