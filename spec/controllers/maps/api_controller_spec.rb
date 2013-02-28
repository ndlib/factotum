require 'spec_helper'


describe Maps::ApiController do 
  let(:valid_ip_address) {'10.41.58.44'}

  let(:map_file) { FactoryGirl.create(:map_file)}
  let(:building) { FactoryGirl.create(:building) }


  before(:each) do
    request.stub(:ip).and_return(valid_ip_address)
  end

  describe "seach by floor and bulding " do
    describe "json" do
      it "returns success with a found map for a building and floor " do 
        get :index, { floor: map_file.search_code, library: building.search_code }

        response.status.should == 200
      end

      it "returns success and empty with a missing map for a building and floor "
    end


    describe "xml" do
      it "returns success with a found map for a building and floor "

      it "returns success and empty with a missing map for a building and floor "
    end


    describe "html" do
      it "returns success with a found map for a building and floor "

      it "returns success and empty with a missing map for a building and floor "
    end
  end


  describe "search by callnumber and sublib " do 

    
  end
end 