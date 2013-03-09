require 'spec_helper'

describe Maps::CallNumberRangesController do

  let(:building) { floor_map.building }
  let(:floor_map) { FactoryGirl.create(:floor_map) }
  let(:call_number_ranges) { FactoryGirl.create_list(:call_number_range, 2, floor_map_id: floor_map.id )}

  let(:valid_params) { { collection_code: 'collection', sublibrary_code: 'sublibrary', begin_call_number: '1111', end_call_number: '2222' } }
  let(:invalid_params) { { collection_code: "" } }


  describe "user" do
    login_user

    it "allows access" do
      get :new, floor_map_id: floor_map.id, building_id: building.id
      response.should be_success
    end


    describe  "#new" do
      it "adds has a map_call_number_range with a new record" do
        get :new, floor_map_id: floor_map.id, building_id: building.id

        assigns(:call_number_range).new_record?.should be_true
      end
    end


    describe "#create" do 
      context "valid create " do 
        it "creates a new map_call_number_range with valid params " do
          post :create, floor_map_id: floor_map.id, building_id: building.id, maps_call_number_range: valid_params
          assigns(:call_number_range).valid?.should be_true
        end

        it "redirects to the index action " do
          post :create,  floor_map_id: floor_map.id, building_id: building.id, maps_call_number_range: valid_params
          response.should be_redirect
          response.should redirect_to(maps_building_floor_map_path(floor_map.building, floor_map))
        end
      end


      context "invalid create " do 

        it "does not create a new map file with invalid params " do
          post :create, floor_map_id: floor_map.id, building_id: building.id, maps_call_number_range: invalid_params
          assigns(:floor_map).valid?.should be_false
        end


        it "renders the new action " do
          post :create, floor_map_id: floor_map.id, building_id: building.id, maps_call_number_range: invalid_params
          response.should render_template("new")
        end
      end

    end


    describe "#edit" do

      it "adds a floor_map with the map file to be edited " do
        call_number_range = call_number_ranges.first

        get :edit, floor_map_id: call_number_range.floor_map.id, building_id: building.id, :id => call_number_range.id
        assigns(:call_number_range).should == call_number_range     
      end
    end


    describe "#update" do
      context "valid update " do 
        it "updates a new map call number with valid params " do
          call_number_range = call_number_ranges.first

          put :update, floor_map_id: call_number_range.floor_map.id, building_id: building.id, :id => call_number_range.id, maps_call_number_range: valid_params
          assigns(:call_number_range).valid?.should be_true
        end

        it "redirects to the index action " do
          call_number_range = call_number_ranges.first
          
          put :update, floor_map_id: call_number_range.floor_map.id, building_id: building.id, :id => call_number_range.id, maps_call_number_range: valid_params
          
          response.should be_redirect
          response.should redirect_to(maps_building_floor_map_path(floor_map.building, floor_map))
        end
      end

      context "invalid update " do 

        it "does not update a new map file with invalid params " do
          call_number_range = call_number_ranges.first

          put :update, floor_map_id: call_number_range.floor_map.id, building_id: building.id, :id => call_number_range.id, maps_call_number_range: invalid_params
          assigns(:call_number_range).valid?.should be_false
        end

        it "renders the new action " do
          call_number_range = call_number_ranges.first

          put :update, floor_map_id: call_number_range.floor_map.id, building_id: building.id, :id => call_number_range.id, maps_call_number_range: invalid_params
          response.should render_template("edit")
        end
      end
    end


    describe "#destroy" do

      it "destroys the floor_map" do
        call_number_range = call_number_ranges.first

        delete :destroy, floor_map_id: call_number_range.floor_map.id, building_id: building.id, id: call_number_range.id

        expect { call_number_range.reload }.to raise_error        
      end      
    end
  end



  describe "anonymous" do
    it "should prompt to log in" do
      call_number_range = call_number_ranges.first

      get :new, floor_map_id: call_number_range.floor_map.id, building_id: building.id
      response.should be_redirect
    end
  end

  

end