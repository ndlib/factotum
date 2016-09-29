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
    helper.refworks_help(:html).should match(/mailto:erhelp/)
  end

  it "should have a plain version of the help text" do
    helper.refworks_help(:plain).should_not match(/mailto/)
    helper.refworks_help(:plain).should match(/erhelp/)
  end
end
