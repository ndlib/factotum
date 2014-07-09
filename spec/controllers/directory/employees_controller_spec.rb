require 'spec_helper'

describe Directory::EmployeesController do

  #NOTE: this needs to be changed once directory goes live to public!

  before(:each) do
     @mock_employees = [ double(DirectoryEmployee, id: 1, netid: 'stub_emp1'), double(DirectoryEmployee, id: 1, netid: 'stub_emp1') ] 
  end


  describe :index do

    it "returns a successful response" do
      get :index
      #change back to be_success
      #response.should be_success
      response.should be_redirect
    end

    it "passes employee array to the view" do
      #reomve this...
      login_user
      DirectoryEmployee.should_receive(:sorted).and_return(@mock_employees)
      get :index
      assigns(:employees).should have(2).items
    end

  end

end
