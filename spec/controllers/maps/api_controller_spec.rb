require 'spec_helper'


describe Maps::ApiController do
  let(:valid_ip_address) {'10.41.58.44'}
  let(:call_number) { "PR 6073 .A83 B6" }
  let(:invalid_call_number) { "DSFASDFASDFSDFDSFDS"}

  let(:floor_map) { FactoryGirl.create(:floor_map) }

  let(:floor_map_response) { Maps::FloorMapApiResponse.new(floor_map, mock_request) }
  let(:nil_floor_map_response) { Maps::FloorMapApiResponse.new(nil, mock_request) }

  let(:call_number_range) { FactoryGirl.create(:call_number_range) }

  let(:call_number_range_response) { Maps::FloorMapApiResponse.new(call_number_range.floor_map, mock_request, call_number) }
  let(:nil_call_number_range_response) { Maps::FloorMapApiResponse.new(nil, mock_request, invalid_call_number) }

  let(:mock_request) {
                      r = mock(ActionController::TestRequest)
                      r.stub(:protocol).and_return('http://')
                      r.stub(:host_with_port).and_return('test.host')
                      r
                    }

  before(:each) do
    request.stub(:ip).and_return(valid_ip_address)
  end

  describe "seach by floor and bulding " do
    describe "json" do
      it "returns success with a found map for a building and floor " do
        get :index, { floor: floor_map.search_code, library: floor_map.building.search_code, :format => :json }

        response.status.should == 200
        response.body.should == floor_map_response.to_json
      end

      it "returns success and empty with a missing map for a building and floor " do
        get :index, { floor: "ADFSDFASDFADSFDAFS", library: "ASDFASDFASDFASDFASDFADSF", :format => :json }

        response.body.should == nil_floor_map_response.to_json
      end
    end
  end


  describe "search by callnumber and sublib " do
    describe "json" do
      it "returns success with a found call number " do
        get :index, { call_number: call_number, collection: call_number_range.collection_code, sublibrary: call_number_range.sublibrary_code, :format => :json }

        response.status.should == 200
        response.body.should == call_number_range_response.to_json
      end

      it "returns success and empty with a missing map for a building and floor " do
        get :index, { call_number: invalid_call_number, collection: call_number_range.collection_code, sublibrary: call_number_range.sublibrary_code, :format => :json }

        response.body.should == nil_call_number_range_response.to_json
      end
    end

  end
end
