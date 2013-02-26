require 'spec_helper'

describe Maps::MapsApiResponse do
     
  let(:map_file) { FactoryGirl.create(:map_file)}
  let(:map_api_response) { Maps::MapsApiResponse.new(map_file)}

  it "response with json " do
    map_api_response.respond_to?(:to_json)
  end

  it "responds with xml " do
    map_api_response.respond_to?(:to_xml)
  end

  describe "response  fields" do
 
  end


  describe "nil map file " do
    let(:nil_map_api_response) { Maps::MapsApiResponse.new(nil) }

    describe :to_json do
      it "gives and empty response" do
        nil_map_api_response.to_json.should == "{}"
      end
    end

    describe :to_xml do 

      it "gives an empty response" do
        nil_map_api_response.to_xml.should == "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<stack-maps>\n</stack-maps>\n"     
      end
    end
  end

end