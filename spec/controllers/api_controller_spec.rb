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
    ApiPermission.any_instance.stub(:allways_return_true_for_environment?).and_return(false)
  end


  describe "valid ip range" do
    before(:each) do
      request.stub(:ip).and_return('10.41.58.44')
    end

    it "allows you in" do
      get :identify
      response.status.should == 200
      response.body.should == "Success"
    end
  end


  describe "invalid ip range" do
    before(:each) do
      request.stub(:ip).and_return('129.74.243.44')
    end

    it "does not allow you in " do
      get :identify
      response.status.should == 404
    end
  end
end