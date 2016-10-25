require 'rails_helper'

describe AcquisitionExport do
  it "should have a valid factory" do
    export = FactoryGirl.create(:acquisition_export)
    expect(export).to be_valid
  end

  it "should export to csv"
end
