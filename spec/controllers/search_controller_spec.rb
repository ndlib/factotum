require 'rails_helper'

describe SearchController do

  describe "GET 'results_library'" do
    it "returns http success" do
      get 'results_library'
      expect(response).to be_success
    end
  end

end
