require 'spec_helper'

describe Maps::MapsCallNumberAdmin do
  let(:map_file) { FactoryGirl.create(:map_file)}  
  let(:call_number_admin) { MapsApi.new(mock_request).call_number_admin(map_file) }

  let(:call_number_ranges) { FactoryGirl.create_list(:map_call_number_range, 2, map_file: map_file )}
  let(:call_number_range) { FactoryGirl.create(:map_call_number_range, map_file: map_file) }


  let(:building) { FactoryGirl.create(:building) }
  let(:mock_request) { 
                      r = mock(ActionController::TestRequest) 
                      r.stub(:protocol).and_return('http://')
                      r.stub(:host_with_port).and_return('localhost:3333')
                      r
                    }

  describe :call_number_ranges do

    it " returns a list of all the call_number_ranges" do
      call_number_ranges
      call_number_admin.map_file.reload      

      call_number_admin.call_number_ranges.size.should == call_number_ranges.size 
    end

  end

  describe :map_file do

    it "returns a call_number_range for the specified id " do
      call_number_range 

      call_number_admin.call_number_range(call_number_range.id).should == call_number_range
    end


    it "returns an empty map_file when no id is specified " do
      call_number_admin.call_number_range.id.should be_nil
      call_number_admin.call_number_range.collection_code.should be_nil
    end
  end


  describe :new_map_file do 
    let(:valid_params) { { collection_code: 'collection', sublibrary_code: 'sublibrary', begin_call_number: '1111', end_call_number: '2222', map_file_id: map_file.id } }

    it "creates a new map file " do
      mf = call_number_admin.new_call_number_range(valid_params)
      mf.valid?.should be_true
    end
  end 


  describe :update_map_file do

    it "updates a map file " do
      cnr = call_number_admin.update_call_number_range(call_number_range, { collection_code: "new name"})
      cnr.collection_code.should == "new name"
    end

  end


  describe :delete_map_file do

    it "deletes the map file " do
      cnr = call_number_range
      call_number_admin.delete_call_number_range(cnr)

      expect { cnr.reload }.to raise_error
    end
  end
end