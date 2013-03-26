require 'spec_helper'

describe SSIFileCopier do

  it "makes a system copy for each of the paths" do
    sfc = SSIFileCopier.new

    server = "rbb@adsf.library.nd.edu:"
    sfc.stub(:server_paths).and_return([
        "#{server}/data/web_root/htdocs/main",
        "#{server}/data/web_root/htdocs/architecture",
        "#{server}/data/web_root/htdocs/bic",
        "#{server}/data/web_root/htdocs/chemistry",
        "#{server}/data/web_root/htdocs/engineering",
        "#{server}/data/web_root/htdocs/kkic",
        "#{server}/data/web_root/htdocs/mathematics",
        "#{server}/data/web_root/htdocs/radlab",
        "#{server}/data/web_root/htdocs/vrc"
      ])
    sfc.should_receive("system").with(/^scp -r [A-Za-z0-9\/*]* [A-Za-z0-9@.:\/_]*$/).exactly(9).times


    sfc.copy_all
  end

end
