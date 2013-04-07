require "spec_helper"

describe "users/show.html.erb" do
  context "user" do
    before do
      login_user
    end

    before do
      @user = view.current_user
    end

    it "succeeds" do
      render
    end
  end
end
