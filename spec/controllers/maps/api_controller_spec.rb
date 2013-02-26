require 'spec_helper'


describe Maps::ApiController do 
  let(:valid_ip_address) {'10.41.58.44'}

  before(:each) do 
    before(:each) do
      request.stub(:ip).and_return(valid_ip_address)
    end
  end

  describe "seach by floor and bulding " do
    describe "json" do
      it "returns success with a found map for a building and floor "

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