require 'rails_helper'

describe Directory::OrganizationController do

  describe "index" do

    it "works" do
      get :index
      expect(response).to be_success
    end

  end

end
