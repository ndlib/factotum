class AcquisitionExport < ActiveRecord::Base
  
  validates_presence_of :start_date, :end_date
  validate :validate_start_date
  
  def filename
    "Just Say Yes Orders #{start_date} to #{end_date}.csv"
  end
  
  def to_csv(link_prefix = nil)
    require 'csv'
    
    orders = JustSayYesOrder.since(start_date).until(end_date).default_order
    
    fields = JustSayYesOrder.auto_fields
    fields << ["Additional details", :additional_details]
    fields << ["File", :file]
    
    csv_output = ""
    CSV::Writer.generate(csv_output) do |csv|
      title_row = []
      fields.each do |title,field|
        title_row << title
      end
      csv << title_row
      
      orders.each do |order|
        values = []
        fields.each do |title,field|
          if field == :file
            if order.attachment.present?
              values << "#{link_prefix}#{order.attachment.url}"
            end
          else
            values << order.send(field)
          end
        end
        csv << values
      end
    end
    
    csv_output
  end
  
  private
    def validate_start_date
      if start_date.present? && end_date.present?
        if start_date > end_date
          errors.add(:start_date, "Start date cannot occur after the end date")
        end
      end
    end
end
