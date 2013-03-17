class PrintController < ApplicationController
  before_filter :authenticate_user!, :except => :show
  before_filter :test_environment!, :only => :print

  protected

    def test_environment!
      if Rails.env == 'development'
        raise "This action will not work in developemnt mode. The pdf generator needs to make a request behind the scenes to the website.  It requires another webserver rails s -p 3008."
      end
    end

end
