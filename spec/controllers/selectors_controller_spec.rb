require 'spec_helper'

describe SelectorsController do
  it "provide a list of funds for a selector" do
    selector = FactoryGirl.create(:selector)
    fund1 = FactoryGirl.create(:selector_fund, :selector => selector)
    fund2 = FactoryGirl.create(:selector_fund, :selector => selector)
    get 'funds', :id => selector.netid, :format => 'json'
    response.should be_success
    response.body.should == selector.funds_json
  end
end