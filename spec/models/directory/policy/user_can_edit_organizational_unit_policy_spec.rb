require 'rails_helper'

describe UserCanEditOrganizationalUnitPolicy do
  let(:non_admin_user) { double(Directory::User, :username => 'nonadmin1', :admin? => false) }
  let(:directory_department) { FactoryBot.create(:directory_department) }

  describe "#can_edit?" do
    it "returns true if the current user is the head of the unit" do
      allow_any_instance_of(UserCanEditOrganizationalUnitPolicy).to receive(:head_of_organizational_unit?).and_return(true)
      expect(UserCanEditOrganizationalUnitPolicy.new(non_admin_user, directory_department).can_edit?).to be_truthy
    end

    it "returns not true if the current user is not an admin" do
      allow_any_instance_of(UserCanEditOrganizationalUnitPolicy).to receive(:head_of_organizational_unit?).and_return(false)
      expect(UserCanEditOrganizationalUnitPolicy.new(non_admin_user, directory_department).can_edit?).not_to be_truthy
    end


  end


end
