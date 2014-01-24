require 'spec_helper'

describe UserIsAdminPolicy do
  let(:admin_user) { double(Directory::User, :username => 'admin1', :admin? => true) }
  let(:non_admin_user) { double(Directory::User, :username => 'nonadmin1', :admin? => false) }


  describe :current_user_is_administrator? do
    it "returns true if the current user is a directory admin user" do
      UserIsAdminPolicy.new(admin_user).is_admin?.should be_true
    end

    it "returns false if the current user is not a directory admin user" do
      UserIsAdminPolicy.new(non_admin_user).is_admin?.should_not be_true
    end
  end




end
