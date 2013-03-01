require 'spec_helper'

describe Maps::MapFilesController do
  let(:building) { FactoryGirl.create(:building) }

  let(:map_files) { FactoryGirl.create_list(:map_file, 2)}

  let(:valid_params) { { name: "name", search_code: "code", file_file_name: "filename", building_id: building.id  } }
  let(:invalid_params) { { name: "" } }

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


    describe  "#new" do
      it "adds has a map file with a new record" do
        get :new

        assigns(:map_file).new_record?.should be_true
      end
    end


    describe "#create" do 
      context "valid create " do 
        it "creates a new map file with valid params " do
          post :create, maps_map_file: valid_params
          assigns(:map_file).valid?.should be_true
        end

        it "redirects to the index action " do
          post :create, maps_map_file: valid_params
          response.should be_redirect
          response.should redirect_to(maps_map_files_path())
        end
      end


      context "invalid create " do 

        it "does not create a new map file with invalid params " do
          post :create, maps_map_file: invalid_params
          assigns(:map_file).valid?.should be_false
        end


        it "renders the new action " do
          post :create, maps_map_file: invalid_params
          response.should render_template("new")
        end
      end

    end


    describe "#update" do
      context "valid update " do 
        it "updates a new map file with valid params " do
          put :update, id: map_files.first.id, maps_map_file: valid_params
          assigns(:map_file).valid?.should be_true
        end

        it "redirects to the index action " do
          put :update, id: map_files.first.id, maps_map_file: valid_params
          response.should be_redirect
          response.should redirect_to(maps_map_files_path())
        end
      end

      context "invalid update " do 

        it "does not update a new map file with invalid params " do
          put :update, id: map_files.first.id, maps_map_file: invalid_params
          assigns(:map_file).valid?.should be_false
        end

        it "renders the new action " do
          put :update, id: map_files.first.id, maps_map_file: invalid_params
          response.should render_template("edit")
        end
      end
    end


    describe "#edit" do

      it "adds a map_file with the map file to be edited " do
        map_file = map_files.first

        get :edit, :id => map_file.id
        assigns(:map_file).should == map_file     
      end
    end

    describe "#destroy" do

      it "destroys the map_file" do
        map_file = map_files.first

        delete :destroy, id: map_file.id

        expect { map_file.reload }.to raise_error        
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