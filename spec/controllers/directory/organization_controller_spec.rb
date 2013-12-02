require 'spec_helper'

describe Directory::OrganizationController do
	before do
      login_user
    end

  describe "index" do


    it "works" do
      get :index
      response.should be_success
    end

  end


end
