require 'spec_helper'

describe Maps::MapCallNumberRangesController do

  let(:map_file) { FactoryGirl.create(:map_file) }
  let(:call_number_ranges) { FactoryGirl.create_list(:map_call_number_range, 2, map_file_id: map_file.id )}

  let(:valid_params) { { collection_code: 'collection', sublibrary_code: 'sublibrary', begin_call_number: '1111', end_call_number: '2222' } }
  let(:invalid_params) { { collection_code: "" } }

  describe "user" do
    login_user

    it "allows access" do
      get :new, map_file_id: map_file.id
      response.should be_success
    end


    describe  "#new" do
      it "adds has a map_call_number_range with a new record" do
        get :new, map_file_id: map_file.id
         
        assigns(:map_call_number_range).new_record?.should be_true
      end
    end


    describe "#create" do 
      context "valid create " do 
        it "creates a new map_call_number_range with valid params " do
          post :create, map_file_id: map_file.id, maps_map_call_number_range: valid_params
          assigns(:map_call_number_range).valid?.should be_true
        end

        it "redirects to the index action " do
          post :create,  map_file_id: map_file.id, maps_map_call_number_range: valid_params
          response.should be_redirect
          response.should redirect_to(maps_map_file_path(map_file))
        end
      end


      context "invalid create " do 

        it "does not create a new map file with invalid params " do
          post :create, map_file_id: map_file.id, maps_map_call_number_range: invalid_params
          assigns(:map_file).valid?.should be_false
        end


        it "renders the new action " do
          post :create, map_file_id: map_file.id, maps_map_call_number_range: invalid_params
          response.should render_template("new")
        end
      end

    end


    describe "#edit" do

      it "adds a map_file with the map file to be edited " do
        call_number_range = call_number_ranges.first

        get :edit, map_file_id: call_number_range.map_file.id, :id => call_number_range.id
        assigns(:map_call_number_range).should == call_number_range     
      end
    end


    describe "#update" do
      context "valid update " do 
        it "updates a new map call number with valid params " do
          call_number_range = call_number_ranges.first

          put :update, map_file_id: call_number_range.map_file.id, :id => call_number_range.id, maps_map_call_number_range: valid_params
          assigns(:map_call_number_range).valid?.should be_true
        end

        it "redirects to the index action " do
          call_number_range = call_number_ranges.first
          
          put :update, map_file_id: call_number_range.map_file.id, :id => call_number_range.id, maps_map_call_number_range: valid_params
          
          response.should be_redirect
          response.should redirect_to(maps_map_file_path(call_number_range.map_file))
        end
      end

      context "invalid update " do 

        it "does not update a new map file with invalid params " do
          call_number_range = call_number_ranges.first

          put :update, map_file_id: call_number_range.map_file.id, :id => call_number_range.id, maps_map_call_number_range: invalid_params
          assigns(:map_call_number_range).valid?.should be_false
        end

        it "renders the new action " do
          call_number_range = call_number_ranges.first

          put :update, map_file_id: call_number_range.map_file.id, :id => call_number_range.id, maps_map_call_number_range: invalid_params
          response.should render_template("edit")
        end
      end
    end


    describe "#destroy" do

      it "destroys the map_file" do
        call_number_range = call_number_ranges.first

        delete :destroy, map_file_id: call_number_range.map_file.id, id: call_number_range.id

        expect { call_number_range.reload }.to raise_error        
      end      
    end
  end



  describe "anonymous" do
    it "should prompt to log in" do
      call_number_range = call_number_ranges.first

      get :new, map_file_id: call_number_range.map_file.id
      response.should be_redirect
    end
  end

  

end