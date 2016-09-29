require 'rails_helper'

describe Maps::FloorMapApiResponse do

  let(:floor_map) { FactoryGirl.create(:floor_map, :call_number_ranges => [ call_number_range ])}

  let(:call_number_range) { FactoryGirl.create(:call_number_range) }
  let(:map_api_response) { Maps::FloorMapApiResponse.new(floor_map, mock_request) }
  let(:call_number_map_api_response) { Maps::FloorMapApiResponse.new(floor_map, mock_request, "call_number") }
  let(:mock_request) {
                      r = double(ActionController::TestRequest)
                      allow(r).to receive(:protocol).and_return('http://')
                      allow(r).to receive(:host_with_port).and_return('localhost:3333')
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
      expect(map_api_response.data.has_key?(:floor)).to be_truthy
    end


    it "has a library field" do
      expect(map_api_response.data.has_key?(:library)).to be_truthy
    end


    it "has an image url field" do
      expect(map_api_response.data.has_key?(:image_url)).to be_truthy
    end


    it "includes the full url " do
      expect(map_api_response.data[:image_url].include?('http://')).to be_truthy
    end

    it "includes the call number" do
      expect(map_api_response.data.has_key?(:call_number)).to be_truthy
    end

    it "uses the call number from the constructor" do
      expect(call_number_map_api_response.data[:call_number]).to eq("call_number")
    end


    it "includes the call number ranges" do
      expect(call_number_map_api_response.data.has_key?(:call_number_ranges)).to be_truthy
    end

    describe "call_number_ranges" do

      it "includes the begin_call_number_range" do
        expect(call_number_map_api_response.data[:call_number_ranges].first.has_key?(:begin_call_number_range)).to be_truthy
      end


      it "includes the end_call_number_range" do
        expect(call_number_map_api_response.data[:call_number_ranges].first.has_key?(:end_call_number_range)).to be_truthy
      end


      it "includes the collection_code" do
        expect(call_number_map_api_response.data[:call_number_ranges].first.has_key?(:collection_code)).to be_truthy
      end


      it "includes the sublibrary_code" do
        expect(call_number_map_api_response.data[:call_number_ranges].first.has_key?(:sublibrary_code)).to be_truthy
      end

    end
  end


  describe "nil map file " do
    let(:nil_map_api_response) { Maps::FloorMapApiResponse.new(nil, mock_request) }

    describe "#to_json" do
      it "gives and empty response" do
        expect(nil_map_api_response.to_json).to eq("{}")
      end
    end

  end

end
