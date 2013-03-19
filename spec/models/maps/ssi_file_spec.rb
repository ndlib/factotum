require 'spec_helper'

describe Maps::SsiFile do
  let(:floor_map) { FactoryGirl.create(:floor_map)}

  it "calls write on the ssi file class" do
    sf = Maps::SsiFile.new(floor_map)

    sf.stub(:file_writer).and_return(Object.new)
    sf.send(:file_writer).should_receive(:write).and_return(true)

    sf.write
  end


  it "passes the floor map to the partials" do
    sf = Maps::SsiFile.new(floor_map)
    sf.send(:partial_locals)[:floor_map].should == floor_map
  end


  it "passes the full image url to the partial " do
    sf = Maps::SsiFile.new(floor_map)
    sf.send(:partial_locals)[:image_url].should == "http://test.host#{floor_map.map.url}"
  end

end