require 'spec_helper'

describe 'User Routes' do
  it "should route to sign_in" do
    { get: "/acquisitions/order/users/sign_in" }.
      should route_to(
        controller: "devise/cas_sessions",
        action: "new"
      )
  end
end