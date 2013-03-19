require 'spec_helper'

describe SSIFileCopier do

  it "makes a system copy for each of the paths" do
    sfc = SSIFileCopier.new
    sfc.should_receive("system").with(/^scp -r [A-Za-z0-9\/*]* [A-Za-z0-9@.:\/_]*$/).exactly(9).times

    sfc.copy_all
  end

end
