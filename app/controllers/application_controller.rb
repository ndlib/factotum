class ApplicationController < ActionController::Base
  protect_from_forgery
  layout :determine_layout

  private
    def determine_layout
      'application'
    end

    def after_sign_in_path_for(resource_or_scope)
      if session["#{resource_or_scope}_return_to"]
        session["#{resource_or_scope}_return_to"]
      elsif resource_or_scope.to_s == "user"
        monographic_order_path
      else
        super
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
