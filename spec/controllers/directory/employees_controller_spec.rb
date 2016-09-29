require 'rails_helper'

describe Directory::EmployeesController do

  before(:each) do
     @mock_employees = [ double(DirectoryEmployee, id: 1, netid: 'stub_emp1'), double(DirectoryEmployee, id: 1, netid: 'stub_emp1') ]
  end


  describe "#index" do

    it "returns a successful response" do
      get :index
      expect(response).to be_success
    end

    it "passes employee array to the view" do
      #reomve this...
      login_user
      expect(DirectoryEmployee).to receive(:sorted).and_return(@mock_employees)
      get :index
      expect(assigns(:employees).size).to eq(2)
    end

  end

end
