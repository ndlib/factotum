class ApiController < ApplicationController
  before_filter :authenticate_api_request!

  protected
    def authenticate_api_request!
      if !api_permission.request_is_internal?
        render_404
      end
    end


    def api_permission
      @api_permission ||= ApiPermission.new(request)
    end
end
