require "spec_helper"

describe "monographic_orders/new.html.erb" do
  context "user" do
    login_user

    before do
      @monographic_order = MonographicOrder.new
    end

    it "succeeds" do
      render
    end
  end
end
