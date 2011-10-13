class ApplicationController < ActionController::Base
  protect_from_forgery
  layout :determine_layout
  
  private
    def determine_layout
      'library'
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
end
