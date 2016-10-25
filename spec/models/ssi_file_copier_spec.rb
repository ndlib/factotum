require 'rails_helper'

describe SSIFileCopier do
  subject { described_class.new }
  let(:server) { "rbb@adsf.library.nd.edu:" }
  let(:server_paths) do
    [
      "#{server}/data/web_root/htdocs/main",
      "#{server}/data/web_root/htdocs/architecture",
      "#{server}/data/web_root/htdocs/bic",
      "#{server}/data/web_root/htdocs/chemistry",
      "#{server}/data/web_root/htdocs/engineering",
      "#{server}/data/web_root/htdocs/kkic",
      "#{server}/data/web_root/htdocs/mathematics",
      "#{server}/data/web_root/htdocs/radlab",
      "#{server}/data/web_root/htdocs/vrc"
    ]
  end

  it "makes a system copy for each of the paths" do
    allow(subject).to receive(:copy_files?).and_return(true)
    allow(subject).to receive(:server_paths).and_return(server_paths)

    command_match = /\Ascp -r -o UserKnownHostsFile=\/dev\/null -o StrictHostKeyChecking=no [A-Za-z0-9\/*]* [A-Za-z0-9@.:\/_]*$\z/
    expect(subject).to receive("puts").with(command_match).exactly(server_paths.count).times
    expect(subject).to receive("system").with(command_match).exactly(server_paths.count).times

    subject.copy_all
  end

  it "does not copy files if copy_files? is false" do
    allow(subject).to receive(:copy_files?).and_return(false)
    allow(subject).to receive(:puts)
    allow(subject).to receive(:server_paths).and_return(server_paths)
    expect(subject).not_to receive("system")

    subject.copy_all
  end

  describe "#copy_files?" do
    subject { described_class.new.send(:copy_files?) }
    it "is false if development?" do
      expect(Rails.env).to receive(:development?).and_return(true)
      allow(Rails.env).to receive(:test?).and_return(false)
      expect(subject).to eq(false)
    end

    it "is false if test?" do
      expect(Rails.env).to receive(:test?).and_return(true)
      allow(Rails.env).to receive(:development?).and_return(false)
      expect(subject).to eq(false)
    end

    it "is true if not test or development" do
      allow(Rails.env).to receive(:test?).and_return(false)
      allow(Rails.env).to receive(:development?).and_return(false)
      expect(subject).to eq(true)
    end
  end

  describe '#remote_path' do
    it 'constucts a copy path for scp' do
      expect(subject.send(:remote_path, 'main/ssi')).to be == "libweb@library.nd.edu:/shared/websites/pprd/main/ssi"
    end
  end
end
