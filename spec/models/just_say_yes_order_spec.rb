require 'rails_helper'

describe JustSayYesOrder do
  it "should have a valid factory" do
    record = FactoryGirl.create(:just_say_yes_order)
    record.should be_valid
  end
end
