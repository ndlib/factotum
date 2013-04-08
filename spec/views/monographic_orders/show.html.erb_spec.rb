require "spec_helper"

describe "monographic_orders/show.html.erb" do
  context "user" do
    before do
      login_user
    end

    before do
      @monographic_order = FactoryGirl.create(:monographic_order, creator: view.current_user)
    end

    it "succeeds" do
      render
    end
  end
end
