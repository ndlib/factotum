require 'spec_helper'

describe SSIFileCopier do
  subject { described_class.new }

  it "makes a system copy for each of the paths" do
    server = "rbb@adsf.library.nd.edu:"
    subject.stub(:server_paths).and_return([
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

    subject.should_receive("system").with(/^scp -r -o UserKnownHostsFile=\/dev\/null -o StrictHostKeyChecking=no [A-Za-z0-9\/*]* [A-Za-z0-9@.:\/_]*$/).exactly(9).times

    subject.copy_all
  end

  describe '#remote_path' do
    it 'constucts a copy path for scp' do
      expect(subject.send(:remote_path, 'main/ssi')).to be == "libweb@david.library.nd.edu:/shared/websites/pprd/main/ssi"
    end
  end
end
