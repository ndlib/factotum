require 'spec_helper'

describe UserCanEditOrganizationalUnitPolicy do
  let(:non_admin_user) { double(Directory::User, :username => 'nonadmin1', :admin? => false) }
  let(:directory_department) { FactoryGirl.create(:directory_department) }

  describe :can_edit? do
    it "returns true if the current user is the head of the unit" do
      UserCanEditOrganizationalUnitPolicy.any_instance.stub(:head_of_organizational_unit?).and_return(true)
      UserCanEditOrganizationalUnitPolicy.new(non_admin_user, directory_department).can_edit?.should be_true
    end

    it "returns not true if the current user is not an admin" do
      UserCanEditOrganizationalUnitPolicy.any_instance.stub(:head_of_organizational_unit?).and_return(false)
      UserCanEditOrganizationalUnitPolicy.new(non_admin_user, directory_department).can_edit?.should_not be_true
    end


  end


end
