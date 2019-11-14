require 'rails_helper'

describe AcquisitionExport do
  it "should have a valid factory" do
    export = FactoryBot.create(:acquisition_export)
    expect(export).to be_valid
  end
end
