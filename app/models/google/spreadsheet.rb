class Google::Spreadsheet

  attr_reader :worksheets

  def initialize(session)
    begin
      @worksheets = session.spreadsheet_by_key(ENV["google_projects_spreadsheet_key"]).worksheets
    rescue Exception => e
      Rails.logger.warn("Projects spreadsheet could not be retrieved: " + e.message)
      raise e
    end
  end

  def get_worksheet(title)
    correct_sheet = nil
    @worksheets.each do |sheet|
      if sheet.title == title
        correct_sheet = sheet 
      end
    end
    correct_sheet
  end

end
