require 'spec_helper'

describe AcquisitionExport do
  it "should have a valid factory" do
    export = FactoryGirl.create(:acquisition_export)
    export.should be_valid
  end

  it "should export to csv"
end
