require 'spec_helper'

describe 'User Routes' do
  it "should route to sign_in" do
    { get: "/acquisitions/order/users/sign_in" }.
      should route_to(
        controller: "devise/cas_sessions",
        action: "new"
      )
  end

  it "should route to show" do
    { get: "/acquisitions/order/user" }.
      should route_to(
        controller: "users",
        action: "show"
      )
  end

  it "should route to order_emails" do
    { put: "/acquisitions/order/user/order_emails" }.
      should route_to(
        controller: "users",
        action: "order_emails"
      )
  end
end
