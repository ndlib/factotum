require 'rails_helper'



describe Directory::Permission do

  let(:directory_employee_status) { FactoryGirl.create(:directory_employee_status) }
  let(:directory_employee_rank) { FactoryGirl.create(:directory_employee_rank) }
  let(:directory_employee) { FactoryGirl.create(:directory_employee, {status_id: directory_employee_status.id, rank_id: directory_employee_rank.id}) }

  let(:admin_user) { double(Directory::User, :username => 'admin1', :admin? => true) }
  let(:non_admin_user) { double(Directory::User, :username => 'nonadmin1', :admin? => false) }
  let(:directory_department) { FactoryGirl.create(:directory_department) }
  let(:directory_subject) { FactoryGirl.create(:directory_subject) }


  describe "#current_user_is_administrator?" do
    it "returns true if the current user is a directory admin user" do
      expect(Directory::Permission.new(admin_user).current_user_is_administrator?).to be_truthy
    end

    it "returns false if the current user is not a directory admin user" do
      expect(Directory::Permission.new(non_admin_user).current_user_is_administrator?).not_to be_truthy
    end
  end


  describe "#current_user_is_library_employee?" do
    it "returns true if the current user is a library employee" do
      allow_any_instance_of(UserIsLibraryEmployeePolicy).to receive(:is_current_library_employee?).and_return(true)
      expect(Directory::Permission.new(non_admin_user).current_user_is_library_employee?).to be_truthy
    end

    it "returns false if the current user is not a library employee" do
      allow_any_instance_of(UserIsLibraryEmployeePolicy).to receive(:is_current_library_employee?).and_return(false)
      expect(Directory::Permission.new(non_admin_user).current_user_is_library_employee?).not_to be_truthy
    end
  end


  describe "#current_user_can_edit?" do
    it "returns true if the current user can edit this employee (is admin)" do
      expect(Directory::Permission.new(admin_user).current_user_can_edit?(directory_employee)).to be_truthy
    end

    it "returns true if the current user can edit this employee (supervises employee)" do
      allow_any_instance_of(UserCanEditEmployeePolicy).to receive(:supervises_employee?).and_return(true)
      expect(Directory::Permission.new(non_admin_user).current_user_can_edit?(directory_employee)).to be_truthy
    end

    it "returns true if the current user can edit this employee (is a manager)" do
      allow_any_instance_of(UserCanEditEmployeePolicy).to receive(:is_manager?).and_return(true)
      expect(Directory::Permission.new(non_admin_user).current_user_can_edit?(directory_employee)).to be_truthy
    end

    it "returns false if the current user cannot edit this employee (fits no criteria)" do
      # we know that this non admin user is different than the employee and is not a supervisor
      expect(Directory::Permission.new(non_admin_user).current_user_can_edit?(directory_employee)).not_to be_truthy
    end



    it "returns true if the current user can edit this department (is admin)" do
      expect(Directory::Permission.new(admin_user).current_user_can_edit?(directory_department)).to be_truthy
    end

    it "returns true if the current user can edit this department (is head)" do
      allow_any_instance_of(UserCanEditOrganizationalUnitPolicy).to receive(:head_of_organizational_unit?).and_return(true)
      expect(Directory::Permission.new(non_admin_user).current_user_can_edit?(directory_department)).to be_truthy
    end

    it "returns false if the current user cannot edit this department (fits no criteria)" do
      # we know that this non admin user is different than the user is not a head
      expect(Directory::Permission.new(non_admin_user).current_user_can_edit?(directory_department)).not_to be_truthy
    end



    it "returns true if the current user can edit this object (is admin)" do
      expect(Directory::Permission.new(admin_user).current_user_can_edit?(directory_subject)).to be_truthy
    end

    it "returns true if the current user cannot edit this object (is admin)" do
      expect(Directory::Permission.new(non_admin_user).current_user_can_edit?(directory_subject)).not_to be_truthy
    end

  end



  describe "#current_user_can_add_employee?" do
    it "returns true if the current user can add employee (is admin)" do
      expect(Directory::Permission.new(admin_user).current_user_can_add_employee?).to be_truthy
    end

    it "returns false if the current user cannot add an employee (not admin)" do
      expect(Directory::Permission.new(non_admin_user).current_user_can_add_employee?).not_to be_truthy
    end
  end


  describe "#current_user_can_add_organization?" do
    it "returns true if the current user can add organization (is admin)" do
      expect(Directory::Permission.new(admin_user).current_user_can_add_organization?).to be_truthy
    end

    it "returns false if the current user cannot add an organization (not admin)" do
      expect(Directory::Permission.new(non_admin_user).current_user_can_add_organization?).not_to be_truthy
    end
  end



  describe "#current_user_can_add_subject?" do
    it "returns true if the current user can add subject (is admin)" do
      expect(Directory::Permission.new(admin_user).current_user_can_add_subject?).to be_truthy
    end

    it "returns false if the current user cannot add an subject (not admin)" do
      expect(Directory::Permission.new(non_admin_user).current_user_can_add_subject?).not_to be_truthy
    end
  end





end
