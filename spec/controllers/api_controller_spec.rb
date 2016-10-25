require 'rails_helper'

class ApiPermissionTestController < ApiController
  def identify
    render :text => "Success"
  end
end


describe ApiPermissionTestController do

  before(:all) do
    Rails.application.routes.draw do
      get 'identify' => 'api_permission_test#identify', :as => :identify
    end
  end

  after(:all) do
    Rails.application.reload_routes!
  end


  before(:each) do
    allow_any_instance_of(ApiPermission).to receive(:allways_return_true_for_environment?).and_return(false)
  end


  describe "valid ip range" do
    before(:each) do
      allow(request).to receive(:ip).and_return('10.41.58.44')
    end

    it "allows you in" do
      get :identify
      expect(response.status).to eq(200)
      expect(response.body).to eq("Success")
    end
  end


  describe "invalid ip range" do
    before(:each) do
      allow(request).to receive(:ip).and_return('129.74.243.44')
    end

    it "does not allow you in " do
      get :identify
      expect(response.status).to eq(404)
    end
  end
end