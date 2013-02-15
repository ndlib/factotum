require "spec_helper"

describe "users/show.html.erb" do
  context "user" do
    login_user

    before do
      @user = view.current_user
    end

    it "succeeds" do
      render
    end
  end
end
