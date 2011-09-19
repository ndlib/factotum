class RefworksBrowser
  USERAGENT = "NDLibraryRefworksAutomator/1.0"
  
  def browser
    if @browser.nil?
      @browser = Mechanize.new
      @browser.user_agent = USERAGENT
    end
    @browser
  end
end