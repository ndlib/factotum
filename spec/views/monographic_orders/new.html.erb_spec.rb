require "spec_helper"

describe "monographic_orders/new.html.erb" do
  context "user" do
    login_user

    before do
      # Create an order so there is an existing selector
      FactoryGirl.create(:monographic_order)
      @monographic_order = MonographicOrder.new
    end

    it "succeeds" do
      render
    end
  end
end
