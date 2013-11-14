require 'spec_helper'

describe Directory::OrganizationController do


  describe "index" do

    it "works" do
      get :index
      response.should be_success
    end

  end


end
