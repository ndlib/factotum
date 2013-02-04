
class Availability::JavascriptBuilderController < ApplicationController

  helper_method :current_url

  def index

  end

  private

  def current_url
    "#{request.protocol}#{request.host_with_port}"
  end


end