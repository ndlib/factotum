require 'rails_helper'

describe UserIsAdminPolicy do
  let(:admin_user) { double(Directory::User, :username => 'admin1', :admin? => true) }
  let(:non_admin_user) { double(Directory::User, :username => 'nonadmin1', :admin? => false) }


  describe "#current_user_is_administrator?" do
    it "returns true if the current user is a directory admin user" do
      expect(UserIsAdminPolicy.new(admin_user).is_admin?).to be_truthy
    end

    it "returns false if the current user is not a directory admin user" do
      expect(UserIsAdminPolicy.new(non_admin_user).is_admin?).not_to be_truthy
    end
  end




end
