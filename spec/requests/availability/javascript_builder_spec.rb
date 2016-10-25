require 'rails_helper'

describe "javascript builder" do

  it "returns a functioning page" do
    get availability_javascript_builder_path()
    expect(response.status).to eq(200)
  end


  it "has a value in the rails configuration for the path" do
    expect(Rails.configuration.hours_api_uri.present?).to be_truthy
  end

end