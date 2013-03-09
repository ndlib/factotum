require 'spec_helper'

describe 'Quicksearch Routes' do
  it "should route to #subject" do
    { get: "quicksearch/subject/" }.
      should route_to(
        controller: "quicksearch",
        action: "subject"
      )
  end
end