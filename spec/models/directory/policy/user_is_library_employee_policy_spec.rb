require 'spec_helper'

describe UserIsLibraryEmployeePolicy do
  let(:admin_user) { double(Directory::User, :username => 'admin1', :admin? => true) }
  let(:non_admin_user) { double(Directory::User, :username => 'nonadmin1', :admin? => false) }
  let(:non_user) { double(Directory::User, :username => '', :admin? => false) }
  let(:directory_employee) { FactoryGirl.create(:directory_employee) }


  describe :is_current_library_employee? do

    it "returns false if the current user is not a library employee" do
      UserIsLibraryEmployeePolicy.new(non_admin_user).is_current_library_employee?.should_not be_true
    end

    it "returns false if the current user is not logged in" do
      UserIsLibraryEmployeePolicy.new(non_user).is_current_library_employee?.should_not be_true
    end


  end


end
