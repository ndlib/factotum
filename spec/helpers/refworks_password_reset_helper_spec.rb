require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the RefworksPasswordResetHelper. For example:
#
# describe RefworksPasswordResetHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       helper.concat_strings("this","that").should == "this that"
#     end
#   end
# end
describe RefworksPasswordResetHelper do
  it "should have an html version of the help text" do
    expect(helper.refworks_help(:html)).to match(/mailto:er-acq-list/)
  end

  it "should have a plain version of the help text" do
    expect(helper.refworks_help(:plain)).not_to match(/mailto/)
    expect(helper.refworks_help(:plain)).to match(/er-acq-list/)
  end
end
