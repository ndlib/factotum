require 'spec_helper'

describe Directory::OrganizationController do

  #NOTE: this needs to be changed once directory goes live to public!
  
  describe "index" do

    it "works" do
      get :index
      #change back to be_success
      #response.should be_success
      response.should be_redirect
    end

  end

end
