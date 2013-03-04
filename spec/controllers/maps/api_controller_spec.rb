require 'spec_helper'


describe Maps::ApiController do 
  let(:valid_ip_address) {'10.41.58.44'}

  let(:floor_map) { FactoryGirl.create(:floor_map)}

  let(:floor_map_response) { Maps::MapsApiResponse.new(floor_map, mock_request ) }
  let(:nil_floor_map_response) { Maps::MapsApiResponse.new(nil, mock_request) }

  let(:call_number_range) { FactoryGirl.create(:call_number_range) }

  let(:call_number_range_response) { Maps::MapsApiResponse.new(call_number_range.floor_map, mock_request ) }
  let(:nil_call_number_range_response) { Maps::MapsApiResponse.new(nil, mock_request) }  

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


    describe "xml" do
      it "returns success with a found map for a building and floor " do 
        get :index, { floor: floor_map.search_code, library: floor_map.building.search_code, :format => :xml }

        response.status.should == 200
        response.body.should == floor_map_response.to_xml        
      end

      it "returns success and empty with a missing map for a building and floor " do
        get :index, { floor: "ADFSDFASDFADSFDAFS", library: "ASDFASDFASDFASDFASDFADSF", :format => :xml }

        response.body.should == nil_floor_map_response.to_xml 
      end
    end


    describe "html" do
      it "returns success with a found map for a building and floor "

      it "returns success and empty with a missing map for a building and floor "
    end
  end


  describe "search by callnumber and sublib " do 
    describe "json" do
      it "returns success with a found call number " do 
        get :index, { call_number: "PR 6073 .A83 B6", collection: call_number_range.collection_code, sublibrary: call_number_range.sublibrary_code, :format => :json }

        response.status.should == 200
        response.body.should == call_number_range_response.to_json
      end

      it "returns success and empty with a missing map for a building and floor " do 
        get :index, { call_number: "sdfasdfafdsfds", collection: call_number_range.collection_code, sublibrary: call_number_range.sublibrary_code, :format => :json }

        response.body.should == nil_call_number_range_response.to_json
      end
    end


    describe "xml" do
      it "returns success with a found map for a building and floor " do 
        get :index, { call_number: "PR 6073 .A83 B6", collection: call_number_range.collection_code, sublibrary: call_number_range.sublibrary_code, :format => :xml }

        response.status.should == 200
        response.body.should == call_number_range_response.to_xml        
      end

      it "returns success and empty with a missing map for a building and floor " do
        get :index, { call_number: "sdfasdfafdsfds", collection: call_number_range.collection_code, sublibrary: call_number_range.sublibrary_code, :format => :xml }

        response.body.should == nil_call_number_range_response.to_xml 
      end
    end
    

    describe "html" do
      it "returns success with a found map for a building and floor "

      it "returns success and empty with a missing map for a building and floor "
    end
    
  end
end 