class Google::Connection

  attr_reader :session

  def initialize
    begin
      @session = GoogleDrive.login(ENV["google_username"], ENV["google_password"])
    rescue GoogleDrive::AuthenticationError => e
      Raven.capture_exception(e)
      Rails.logger.warn(e.message)
      raise e
    end
  end

  def auth_token
    @session.auth_token
  end

end
