require 'rails_helper'

describe "javascript builder" do

  it "returns a functioning page" do
    get availability_javascript_builder_path()
    response.status.should == 200
  end


  it "has a value in the rails configuration for the path" do
    Rails.configuration.hours_api_uri.present?.should be_true
  end

end