require 'spec_helper'

describe Maps::MapsApiResponse do
     
  let(:floor_map) { FactoryGirl.create(:floor_map)}
  let(:map_api_response) { Maps::MapsApiResponse.new(floor_map, mock_request)}
  let(:mock_request) { 
                      r = mock(ActionController::TestRequest) 
                      r.stub(:protocol).and_return('http://')
                      r.stub(:host_with_port).and_return('localhost:3333')
                      r
                    } 

  it "response with json " do 
    map_api_response.respond_to?(:to_json)
  end

  it "responds with xml " do
    map_api_response.respond_to?(:to_xml)
  end


  describe "response fields" do
    
    it "has a floor field" do      
      map_api_response.data.has_key?(:floor)
    end


    it "has a library field" do 
      map_api_response.data.has_key?(:library)
    end


    it "has an image url field" do
      map_api_response.data.has_key?(:image_url)
    end


    it "includes the full url " do
      map_api_response.data[:image_url].include?('http://')
    end

  end


  describe "nil map file " do
    let(:nil_map_api_response) { Maps::MapsApiResponse.new(nil, mock_request) }

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