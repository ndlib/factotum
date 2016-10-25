require 'rails_helper'

describe 'User Routes' do
  it "should route to sign_in" do
    expect({ get: "/utilities/users/sign_in" }).
      to route_to(
        controller: "devise/cas_sessions",
        action: "new"
      )
  end

  it "should route to show" do
    expect({ get: "/utilities/acquisitions/order/user" }).
      to route_to(
        controller: "users",
        action: "show"
      )
  end

  it "should route to order_emails" do
    expect({ put: "/utilities/acquisitions/order/user/order_emails" }).
      to route_to(
        controller: "users",
        action: "order_emails"
      )
  end
end
