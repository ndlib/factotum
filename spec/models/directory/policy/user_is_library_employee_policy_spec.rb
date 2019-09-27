require 'rails_helper'

describe UserIsLibraryEmployeePolicy do
  let(:admin_user) { double(Directory::User, :username => 'admin1', :admin? => true) }
  let(:non_admin_user) { double(Directory::User, :username => 'nonadmin1', :admin? => false) }
  let(:non_user) { double(Directory::User, :username => '', :admin? => false) }
  let(:directory_employee) { FactoryBot.create(:directory_employee) }


  describe "#is_current_library_employee?" do

    it "returns false if the current user is not a library employee" do
      expect(UserIsLibraryEmployeePolicy.new(non_admin_user).is_current_library_employee?).not_to be_truthy
    end

    it "returns false if the current user is not logged in" do
      expect(UserIsLibraryEmployeePolicy.new(non_user).is_current_library_employee?).not_to be_truthy
    end


  end


end
