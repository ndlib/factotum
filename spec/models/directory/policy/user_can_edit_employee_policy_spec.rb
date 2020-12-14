require 'rails_helper'

describe UserCanEditEmployeePolicy do


  let(:directory_employee_status) { FactoryBot.create(:directory_employee_status) }
  let(:directory_employee_rank) { FactoryBot.create(:directory_employee_rank) }


  let(:admin_user) { double(Directory::User, :username => 'admin1', :admin? => true) }
  let(:non_admin_user) { double(Directory::User, :username => 'nonadmin1', :admin? => false) }
  let(:directory_employee) { FactoryBot.create(:directory_employee, {status_id: directory_employee_status.id, rank_id: directory_employee_rank.id}) }

  let(:manager_user) { double(Directory::User, :username => 'manager', :admin? => false) }
  let(:subordinate_user) { double(Directory::User, :username => 'sub', :admin? => false) }

  let(:manager_employee) { FactoryBot.create(:directory_employee_manager, {status_id: directory_employee_status.id, rank_id: directory_employee_rank.id}) }
  let(:subordinate_employee) { FactoryBot.create(:directory_employee_subordinate, {status_id: directory_employee_status.id, rank_id: directory_employee_rank.id}) }
  let(:librarian_employee) { FactoryBot.create(:directory_employee_librarian, {status_id: directory_employee_status.id, rank_id: directory_employee_rank.id}) }



  describe "#can_edit?" do
    it "returns true if the current user is the employees supervisor stubbed" do
      allow_any_instance_of(UserCanEditEmployeePolicy).to receive(:supervises_employee?).and_return(true)
      expect(UserCanEditEmployeePolicy.new(admin_user, directory_employee).can_edit?).to be_truthy
    end

    it "returns false if the current user is not the employees supervisor stubbed" do
      allow_any_instance_of(UserCanEditEmployeePolicy).to receive(:supervises_employee?).and_return(false)
      expect(UserCanEditEmployeePolicy.new(non_admin_user, directory_employee).can_edit?).not_to be_truthy
    end

    it "returns true if the current user is a manager" do
      allow_any_instance_of(UserCanEditEmployeePolicy).to receive(:is_manager?).and_return(true)
      expect(UserCanEditEmployeePolicy.new(non_admin_user, directory_employee).can_edit?).to be_truthy
    end

    it "returns true if the current user is a librarian" do
      allow_any_instance_of(UserCanEditEmployeePolicy).to receive(:is_librarian?).and_return(true)
      expect(UserCanEditEmployeePolicy.new(non_admin_user, directory_employee).can_edit?).to be_truthy
    end

    it "returns false if the current user is not a manager or librarian or admin" do
      expect(UserCanEditEmployeePolicy.new(non_admin_user, directory_employee).can_edit?).not_to be_truthy
    end

    it "returns false if the current user is not the employee" do
      expect(UserCanEditEmployeePolicy.new(non_admin_user, directory_employee).can_edit?).not_to be_truthy
    end

  end


end
