require 'spec_helper'

describe Maps::MapFilesController do
  let(:library) {
    floor.library
  }

  let(:floor) {
    FactoryGirl.create(:floor)
  }

  let(:map_files) { FactoryGirl.create_list(:map_file, 2)}

  describe "user" do
    login_user


    it "allows access" do
      get :index
      response.should be_success
    end

    describe "#index" do
      it "gets all the maps files " do
        map_files
        get :index

        assigns(:map_files).should == map_files      
      end      
    end
  end



  describe "anonymous" do
    it "should prompt to log in" do
      get :index
      response.should be_redirect
    end
  end

end