require 'rails_helper'

describe JustSayYesOrder do
  it "should have a valid factory" do
    record = FactoryGirl.create(:just_say_yes_order)
    expect(record).to be_valid
  end
end
