require 'spec_helper'

describe UserCanEditEmployeePolicy do
  let(:admin_user) { double(Directory::User, :username => 'admin1', :admin? => true) }
  let(:non_admin_user) { double(Directory::User, :username => 'nonadmin1', :admin? => false) }
  let(:directory_employee) { FactoryGirl.create(:directory_employee) }


  describe :can_edit? do
    it "returns true if the current user is the employees supervisor" do
      UserCanEditEmployeePolicy.any_instance.stub(:supervises_employee?).and_return(true)
      UserCanEditEmployeePolicy.new(admin_user, directory_employee).can_edit?.should be_true
    end

    it "returns false if the current user is not the employees supervisor" do
      UserCanEditEmployeePolicy.any_instance.stub(:supervises_employee?).and_return(false)
      UserCanEditEmployeePolicy.new(non_admin_user, directory_employee).can_edit?.should_not be_true
    end

    it "returns true if the current user is the employee" do
      directory_employee.netid = admin_user.username
      UserCanEditEmployeePolicy.new(admin_user, directory_employee).can_edit?.should be_true
    end

    it "returns false if the current user is not the employee" do
      UserCanEditEmployeePolicy.new(non_admin_user, directory_employee).can_edit?.should_not be_true
    end

  end


end
