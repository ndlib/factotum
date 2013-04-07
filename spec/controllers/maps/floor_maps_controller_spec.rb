
describe Maps::FloorMapsController do
  let(:building) { FactoryGirl.create(:building) }

  let(:floor_maps) { FactoryGirl.create_list(:floor_map, 2, building: building)}

  let(:valid_params) { { name: "name", search_code: "code", floor_number: 1, map_file_name: "filename", building_id: building.id  } }
  let(:invalid_params) { { name: "" } }

  describe "user" do
    before do
      login_user
    end

    it "allows access" do
      get :index, building_id: building.id
      response.should be_success
    end


    describe "#index" do
      it "gets all the maps files " do
        floor_maps
        get :index, building_id: building.id

        assigns(:floor_maps).should == floor_maps
      end
    end


    describe  "#new" do
      it "adds has a map file with a new record" do
        get :new, building_id: building.id

        assigns(:floor_map).new_record?.should be_true
      end
    end


    describe "#create" do
      context "valid create " do
        it "creates a new map file with valid params " do
          post :create, building_id: building.id, maps_floor_map: valid_params
          assigns(:floor_map).valid?.should be_true
        end

        it "redirects to the index action " do
          post :create, building_id: building.id, maps_floor_map: valid_params
          response.should be_redirect
          response.should redirect_to(maps_building_floor_maps_path(building))
        end
      end


      context "invalid create " do

        it "does not create a new map file with invalid params " do
          post :create, building_id: building.id, maps_floor_map: invalid_params
          assigns(:floor_map).valid?.should be_false
        end


        it "renders the new action " do
          post :create, building_id: building.id, maps_floor_map: invalid_params
          response.should render_template("new")
        end
      end

    end


    describe "#update" do
      context "valid update " do
        it "updates a new map file with valid params " do
          floor_map = floor_maps.first

          put :update, building_id: floor_map.building.id, id: floor_map.id, maps_floor_map: valid_params
          assigns(:floor_map).valid?.should be_true
        end

        it "redirects to the index action " do
          floor_map = floor_maps.first

          put :update, building_id: floor_map.building.id, id: floor_map.id, maps_floor_map: valid_params
          response.should be_redirect
          response.should redirect_to(maps_building_floor_maps_path(floor_map.building))
        end
      end

      context "invalid update " do

        it "does not update a new map file with invalid params " do
          floor_map = floor_maps.first

          put :update, building_id: floor_map.building.id, id: floor_map.id, maps_floor_map: invalid_params
          assigns(:floor_map).valid?.should be_false
        end

        it "renders the new action " do
          floor_map = floor_maps.first

          put :update, building_id: floor_map.building.id, id: floor_map.id, maps_floor_map: invalid_params
          response.should render_template("edit")
        end
      end
    end


    describe "#edit" do

      it "adds a floor_map with the map file to be edited " do
        floor_map = floor_maps.first

        get :edit, building_id: floor_map.building.id, :id => floor_map.id
        assigns(:floor_map).should == floor_map
      end
    end

    describe "#destroy" do

      it "destroys the floor_map" do
        floor_map = floor_maps.first

        delete :destroy, building_id: floor_map.building.id, id: floor_map.id

        expect { floor_map.reload }.to raise_error
      end
    end
  end



  describe "anonymous" do
    it "should prompt to log in" do
      floor_map = floor_maps.first

      get :index, building_id: floor_map.building.id
      response.should be_redirect
    end
  end

end
