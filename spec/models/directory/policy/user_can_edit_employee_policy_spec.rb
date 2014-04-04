require 'spec_helper'

describe UserCanEditEmployeePolicy do
  let(:admin_user) { double(Directory::User, :username => 'admin1', :admin? => true) }
  let(:non_admin_user) { double(Directory::User, :username => 'nonadmin1', :admin? => false) }
  let(:directory_employee) { FactoryGirl.create(:directory_employee) }

  let(:manager_user) { double(Directory::User, :username => 'manager', :admin? => false) }
  let(:subordinate_user) { double(Directory::User, :username => 'sub', :admin? => false) }
  
  let(:manager_employee) { FactoryGirl.create(:directory_employee_manager) }
  let(:subordinate_employee) { FactoryGirl.create(:directory_employee_subordinate) }
  let(:librarian_employee) { FactoryGirl.create(:directory_employee_librarian) }



  describe :can_edit? do
    it "returns true if the current user is the employees supervisor stubbed" do
      UserCanEditEmployeePolicy.any_instance.stub(:supervises_employee?).and_return(true)
      UserCanEditEmployeePolicy.new(admin_user, directory_employee).can_edit?.should be_true
    end

    it "returns false if the current user is not the employees supervisor stubbed" do
      UserCanEditEmployeePolicy.any_instance.stub(:supervises_employee?).and_return(false)
      UserCanEditEmployeePolicy.new(non_admin_user, directory_employee).can_edit?.should_not be_true
    end

    it "returns true if the current user is a manager" do
      UserCanEditEmployeePolicy.any_instance.stub(:is_manager?).and_return(true)
      UserCanEditEmployeePolicy.new(non_admin_user, directory_employee).can_edit?.should be_true
    end

    it "returns true if the current user is a librarian" do
      UserCanEditEmployeePolicy.any_instance.stub(:is_librarian?).and_return(true)
      UserCanEditEmployeePolicy.new(non_admin_user, directory_employee).can_edit?.should be_true
    end

    it "returns false if the current user is not a manager or librarian or admin" do
      UserCanEditEmployeePolicy.new(non_admin_user, directory_employee).can_edit?.should_not be_true
    end

    it "returns false if the current user is not the employee" do
      UserCanEditEmployeePolicy.new(non_admin_user, directory_employee).can_edit?.should_not be_true
    end

  end


end
