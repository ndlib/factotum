require 'rails_helper'

describe Maps::FloorMapSsiFile do
  let(:floor_map) { FactoryGirl.create(:floor_map)}

  it "calls write on the ssi file class" do
    sf = Maps::FloorMapSsiFile.new(floor_map)

    allow(sf).to receive(:file_writer).and_return(Object.new)
    expect(sf.send(:file_writer)).to receive(:write).and_return(true)

    sf.write
  end


  it "passes the floor map to the partials" do
    sf = Maps::FloorMapSsiFile.new(floor_map)
    expect(sf.send(:partial_locals)[:floor_map]).to eq(floor_map)
  end


  it "passes the full image url to the partial " do
    sf = Maps::FloorMapSsiFile.new(floor_map)
    expect(sf.send(:partial_locals)[:image_url]).to eq("http://test.host#{floor_map.map.url}")
  end

end
