require 'spec_helper'

describe Maps::ApiResponse do
     
  let(:floor_map) { FactoryGirl.create(:floor_map)}
  let(:map_api_response) { Maps::ApiResponse.new(floor_map, mock_request) }
  let(:call_number_map_api_response) { Maps::ApiResponse.new(floor_map, mock_request, "call_number") }
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
      map_api_response.data.has_key?(:floor).should be_true
    end


    it "has a library field" do 
      map_api_response.data.has_key?(:library).should be_true
    end


    it "has an image url field" do
      map_api_response.data.has_key?(:image_url).should be_true
    end


    it "includes the full url " do
      map_api_response.data[:image_url].include?('http://').should be_true
    end

    it "includes the call number" do 
      map_api_response.data.has_key?(:call_number).should be_true
    end

    it "uses the call number from the constructor" do 
      call_number_map_api_response.data[:call_number].should == "call_number"
    end

  end


  describe "nil map file " do
    let(:nil_map_api_response) { Maps::ApiResponse.new(nil, mock_request) }

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