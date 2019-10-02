class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  before_filter :store_location, except: [:oktaoauth]
  
  # protect_from_forgery
  layout :determine_layout

  # Okta
  # This method can be used for testing but is not currently used by the application
  def user_is_logged_in?
    if !session[:netid]
      print("this user is not logged in\n")
      print("SESSION: " + session.keys.to_s + "\n")
      redirect_to user_oktaoauth_omniauth_authorize_path
    else
      print "USER IS LOGGED IN: " + session[:netid] + "\n\n"
      print("OKTA AUTH INFO: " + session[:oktastate].to_s + "\n\n")
    end
  end

  private
    def determine_layout
      'application'
    end

    def store_location
      # store last url - this is needed for post-login redirect to whatever the user last visited.
      return unless request.get?
      if (request.path != "/utilities/users/sign_in" &&
          request.path != "/utilities/users/sign_up" &&
          request.path != "/utilities/users/password/new" &&
          request.path != "/utilities/users/password/edit" &&
          request.path != "/utilities/users/confirmation" &&
          request.path != "/utilities/users/sign_out" &&
          request.path != "/utilities/users/service" &&
          !request.xhr?) # don't store ajax calls
        session[:previous_url] = request.fullpath
      end
    end

    def after_sign_in_path_for(resource_or_scope)
      if session["#{resource_or_scope}_return_to"]
        session["#{resource_or_scope}_return_to"]
      else
        session[:previous_url] || root_path
      end
    end


    def render_404
      respond_to do |format|
        format.html { render :file => Rails.root.join("public","404.html"), :status => "404 Not Found"}
        format.json { render :nothing => true, :status => "404 Not Found"}
      end
    end


    def render_403
      respond_to do |format|
        format.html { render :file => Rails.root.join("public","403.html"), :status => "403 Forbidden"}
        format.json { render :nothing => true, :status => "403 Forbidden"}
      end
    end


    def host_prefix
      "#{request.protocol}#{request.host}#{(request.port != 80 && request.port != 443) ? ":#{request.port}" : ""}"
    end
end
