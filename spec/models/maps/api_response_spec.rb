require 'spec_helper'

describe Maps::ApiResponse do

  let(:floor_map) { FactoryGirl.create(:floor_map, :call_number_ranges => [ call_number_range ])}

  let(:call_number_range) { FactoryGirl.create(:call_number_range) }
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


    it "includes the call number ranges" do
      call_number_map_api_response.data.has_key?(:call_number_ranges).should be_true
    end

    describe "call_number_ranges" do

      it "includes the begin_call_number_range" do
        call_number_map_api_response.data[:call_number_ranges].first.has_key?(:begin_call_number_range).should be_true
      end


      it "includes the end_call_number_range" do
        call_number_map_api_response.data[:call_number_ranges].first.has_key?(:end_call_number_range).should be_true
      end


      it "includes the collection_code" do
        call_number_map_api_response.data[:call_number_ranges].first.has_key?(:collection_code).should be_true
      end


      it "includes the sublibrary_code" do
        call_number_map_api_response.data[:call_number_ranges].first.has_key?(:sublibrary_code).should be_true
      end

    end
  end


  describe "nil map file " do
    let(:nil_map_api_response) { Maps::ApiResponse.new(nil, mock_request) }

    describe :to_json do
      it "gives and empty response" do
        nil_map_api_response.to_json.should == "{}"
      end
    end

  end

end
