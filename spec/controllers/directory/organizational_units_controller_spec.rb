require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe Directory::OrganizationalUnitsController do

  # This should return the minimal set of attributes required to create a valid
  # Directory::OrganizationalUnit. As you add validations to Directory::OrganizationalUnit, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {  }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # Directory::OrganizationalUnitsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all directory_organizational_units as @directory_organizational_units" do
      organizational_unit = Directory::OrganizationalUnit.create! valid_attributes
      get :index, {}, valid_session
      assigns(:directory_organizational_units).should eq([organizational_unit])
    end
  end

  describe "GET show" do
    it "assigns the requested directory_organizational_unit as @directory_organizational_unit" do
      organizational_unit = Directory::OrganizationalUnit.create! valid_attributes
      get :show, {:id => organizational_unit.to_param}, valid_session
      assigns(:directory_organizational_unit).should eq(organizational_unit)
    end
  end

  describe "GET new" do
    it "assigns a new directory_organizational_unit as @directory_organizational_unit" do
      get :new, {}, valid_session
      assigns(:directory_organizational_unit).should be_a_new(Directory::OrganizationalUnit)
    end
  end

  describe "GET edit" do
    it "assigns the requested directory_organizational_unit as @directory_organizational_unit" do
      organizational_unit = Directory::OrganizationalUnit.create! valid_attributes
      get :edit, {:id => organizational_unit.to_param}, valid_session
      assigns(:directory_organizational_unit).should eq(organizational_unit)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Directory::OrganizationalUnit" do
        expect {
          post :create, {:directory_organizational_unit => valid_attributes}, valid_session
        }.to change(Directory::OrganizationalUnit, :count).by(1)
      end

      it "assigns a newly created directory_organizational_unit as @directory_organizational_unit" do
        post :create, {:directory_organizational_unit => valid_attributes}, valid_session
        assigns(:directory_organizational_unit).should be_a(Directory::OrganizationalUnit)
        assigns(:directory_organizational_unit).should be_persisted
      end

      it "redirects to the created directory_organizational_unit" do
        post :create, {:directory_organizational_unit => valid_attributes}, valid_session
        response.should redirect_to(Directory::OrganizationalUnit.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved directory_organizational_unit as @directory_organizational_unit" do
        # Trigger the behavior that occurs when invalid params are submitted
        Directory::OrganizationalUnit.any_instance.stub(:save).and_return(false)
        post :create, {:directory_organizational_unit => {  }}, valid_session
        assigns(:directory_organizational_unit).should be_a_new(Directory::OrganizationalUnit)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Directory::OrganizationalUnit.any_instance.stub(:save).and_return(false)
        post :create, {:directory_organizational_unit => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested directory_organizational_unit" do
        organizational_unit = Directory::OrganizationalUnit.create! valid_attributes
        # Assuming there are no other directory_organizational_units in the database, this
        # specifies that the Directory::OrganizationalUnit created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Directory::OrganizationalUnit.any_instance.should_receive(:update_attributes).with({ "these" => "params" })
        put :update, {:id => organizational_unit.to_param, :directory_organizational_unit => { "these" => "params" }}, valid_session
      end

      it "assigns the requested directory_organizational_unit as @directory_organizational_unit" do
        organizational_unit = Directory::OrganizationalUnit.create! valid_attributes
        put :update, {:id => organizational_unit.to_param, :directory_organizational_unit => valid_attributes}, valid_session
        assigns(:directory_organizational_unit).should eq(organizational_unit)
      end

      it "redirects to the directory_organizational_unit" do
        organizational_unit = Directory::OrganizationalUnit.create! valid_attributes
        put :update, {:id => organizational_unit.to_param, :directory_organizational_unit => valid_attributes}, valid_session
        response.should redirect_to(organizational_unit)
      end
    end

    describe "with invalid params" do
      it "assigns the directory_organizational_unit as @directory_organizational_unit" do
        organizational_unit = Directory::OrganizationalUnit.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Directory::OrganizationalUnit.any_instance.stub(:save).and_return(false)
        put :update, {:id => organizational_unit.to_param, :directory_organizational_unit => {  }}, valid_session
        assigns(:directory_organizational_unit).should eq(organizational_unit)
      end

      it "re-renders the 'edit' template" do
        organizational_unit = Directory::OrganizationalUnit.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Directory::OrganizationalUnit.any_instance.stub(:save).and_return(false)
        put :update, {:id => organizational_unit.to_param, :directory_organizational_unit => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested directory_organizational_unit" do
      organizational_unit = Directory::OrganizationalUnit.create! valid_attributes
      expect {
        delete :destroy, {:id => organizational_unit.to_param}, valid_session
      }.to change(Directory::OrganizationalUnit, :count).by(-1)
    end

    it "redirects to the directory_organizational_units list" do
      organizational_unit = Directory::OrganizationalUnit.create! valid_attributes
      delete :destroy, {:id => organizational_unit.to_param}, valid_session
      response.should redirect_to(directory_organizational_units_url)
    end
  end

end
