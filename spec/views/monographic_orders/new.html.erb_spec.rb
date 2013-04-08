require "spec_helper"

describe "monographic_orders/new.html.erb" do
  context "user" do
    before do
      login_user
    end

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
