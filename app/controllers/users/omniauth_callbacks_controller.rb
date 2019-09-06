class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
    def oktaoauth
          print("STATE: " + request.env["omniauth.auth"].extra.raw_info.netid + "\n\n")
          session[:oktastate] = request.env["omniauth.auth"]  #store all okta data in session
          # get netid
        #   session[:netid] = request.env["omniauth.auth"]['extra']['raw_info']['netid']
          session[:netid] = request.env["omniauth.auth"].extra.raw_info.netid
        #   session[:netid] = request.env["omniauth.auth"]["uid"]
        #   print "NETID: " + session[:netid] + "\n\n"
        #   print "NETID: " + request.env["omniauth.origin"] + "\n\n"
        #   session[:netid] = 'rfox2'
        #   redirect_to root_path
        @user = User.where(username: session[:netid]).first_or_create
        sign_in_and_redirect @user
        # redirect_to session[:previous_url]
    end
end
 