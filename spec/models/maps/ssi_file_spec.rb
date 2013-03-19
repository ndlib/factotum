require 'spec_helper'

describe Maps::SsiFile do
  let(:floor_map) { FactoryGirl.create(:floor_map)}

  it "calls write on the ssi file class" do
    sf = Maps::SsiFile.new(floor_map)

    sf.stub(:file_writer).and_return(Object.new)
    sf.send(:file_writer).should_receive(:write).and_return(true)

    sf.write
  end

end
