require 'rails_helper'

describe 'Quicksearch Routes' do
  it "should route to #subject" do
    expect({ get: "/utilities/quicksearch/subject/" }).
      to route_to(
        controller: "quicksearch",
        action: "subject"
      )
  end
end
