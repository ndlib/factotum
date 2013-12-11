require 'spec_helper'

describe Directory::Admin::EmployeesController do

  let(:directory_employee) { FactoryGirl.create(:directory_employee) }
  

  describe :add do

    it "returns a successful response" do
      get :add
      response.should be_success
    end


  end

  describe :edit do

    it "returns a successful response" do
      get :edit
      response.should be_success
    end

    it "passes employee to the view" do
      DirectoryEmployee.should_receive(:sorted).and_return(@mock_employees)
      get :edit
      assigns(:employees).should have(2).items
    end

  end



end


