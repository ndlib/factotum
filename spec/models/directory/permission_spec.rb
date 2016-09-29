require 'rails_helper'



describe Directory::Permission do

  let(:directory_employee_status) { FactoryGirl.create(:directory_employee_status) }
  let(:directory_employee_rank) { FactoryGirl.create(:directory_employee_rank) }
  let(:directory_employee) { FactoryGirl.create(:directory_employee, {status_id: directory_employee_status.id, rank_id: directory_employee_rank.id}) }

  let(:admin_user) { double(Directory::User, :username => 'admin1', :admin? => true) }
  let(:non_admin_user) { double(Directory::User, :username => 'nonadmin1', :admin? => false) }
  let(:directory_department) { FactoryGirl.create(:directory_department) }
  let(:directory_subject) { FactoryGirl.create(:directory_subject) }


  describe :current_user_is_administrator? do
    it "returns true if the current user is a directory admin user" do
      Directory::Permission.new(admin_user).current_user_is_administrator?.should be_true
    end

    it "returns false if the current user is not a directory admin user" do
      Directory::Permission.new(non_admin_user).current_user_is_administrator?.should_not be_true
    end
  end


  describe :current_user_is_library_employee? do
    it "returns true if the current user is a library employee" do
      UserIsLibraryEmployeePolicy.any_instance.stub(:is_current_library_employee?).and_return(true)
      Directory::Permission.new(non_admin_user).current_user_is_library_employee?.should be_true
    end

    it "returns false if the current user is not a library employee" do
      UserIsLibraryEmployeePolicy.any_instance.stub(:is_current_library_employee?).and_return(false)
      Directory::Permission.new(non_admin_user).current_user_is_library_employee?.should_not be_true
    end
  end


  describe :current_user_can_edit? do
    it "returns true if the current user can edit this employee (is admin)" do
      Directory::Permission.new(admin_user).current_user_can_edit?(directory_employee).should be_true
    end

    it "returns true if the current user can edit this employee (supervises employee)" do
      UserCanEditEmployeePolicy.any_instance.stub(:supervises_employee?).and_return(true)
      Directory::Permission.new(non_admin_user).current_user_can_edit?(directory_employee).should be_true
    end

    it "returns true if the current user can edit this employee (is a manager)" do
      UserCanEditEmployeePolicy.any_instance.stub(:is_manager?).and_return(true)
      Directory::Permission.new(non_admin_user).current_user_can_edit?(directory_employee).should be_true
    end

    it "returns false if the current user cannot edit this employee (fits no criteria)" do
      # we know that this non admin user is different than the employee and is not a supervisor
      Directory::Permission.new(non_admin_user).current_user_can_edit?(directory_employee).should_not be_true
    end



    it "returns true if the current user can edit this department (is admin)" do
      Directory::Permission.new(admin_user).current_user_can_edit?(directory_department).should be_true
    end

    it "returns true if the current user can edit this department (is head)" do
      UserCanEditOrganizationalUnitPolicy.any_instance.stub(:head_of_organizational_unit?).and_return(true)
      Directory::Permission.new(non_admin_user).current_user_can_edit?(directory_department).should be_true
    end

    it "returns false if the current user cannot edit this department (fits no criteria)" do
      # we know that this non admin user is different than the user is not a head
      Directory::Permission.new(non_admin_user).current_user_can_edit?(directory_department).should_not be_true
    end



    it "returns true if the current user can edit this object (is admin)" do
      Directory::Permission.new(admin_user).current_user_can_edit?(directory_subject).should be_true
    end

    it "returns true if the current user cannot edit this object (is admin)" do
      Directory::Permission.new(non_admin_user).current_user_can_edit?(directory_subject).should_not be_true
    end

  end



  describe :current_user_can_add_employee? do
    it "returns true if the current user can add employee (is admin)" do
      Directory::Permission.new(admin_user).current_user_can_add_employee?.should be_true
    end

    it "returns false if the current user cannot add an employee (not admin)" do
      Directory::Permission.new(non_admin_user).current_user_can_add_employee?.should_not be_true
    end
  end


  describe :current_user_can_add_organization? do
    it "returns true if the current user can add organization (is admin)" do
      Directory::Permission.new(admin_user).current_user_can_add_organization?.should be_true
    end

    it "returns false if the current user cannot add an organization (not admin)" do
      Directory::Permission.new(non_admin_user).current_user_can_add_organization?.should_not be_true
    end
  end



  describe :current_user_can_add_subject? do
    it "returns true if the current user can add subject (is admin)" do
      Directory::Permission.new(admin_user).current_user_can_add_subject?.should be_true
    end

    it "returns false if the current user cannot add an subject (not admin)" do
      Directory::Permission.new(non_admin_user).current_user_can_add_subject?.should_not be_true
    end
  end





end
