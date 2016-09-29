require 'rails_helper'

describe Availability::HoursExceptionsController do
  let(:service_point) {
    FactoryGirl.create(:service_point, regular_hours: [ current_hours], hours_exceptions: [ hours_exception ])
  }

  let(:current_hours) {
    FactoryGirl.create(:regular_hours)
  }

  let(:hours_exception) {
    FactoryGirl.create(:hours_exception)
  }

  describe "user" do
    before do
      login_user
    end

    it "allows access" do
      get :new, :service_point_id => service_point.id
      expect(response).to be_success
    end

    describe "#new" do
      it "sends the service point" do
        get :new, :service_point_id => service_point.id

        expect(assigns(:service_point)).to eq(service_point)
        expect(assigns(:hours).new_record?).to be_truthy
      end
    end

    describe "#create" do
      let(:create_fields) { { name: "Name", start_date: 1.month.ago, end_date: 1.month.from_now, hours: {:start_day => ['wednesday'], :end_day => ['sunday'], :hours => [ 'Open 24 Hours' ] } } }

      it "creates new hours " do
        put :create, service_point_id: service_point.id, availability_hours_exception: create_fields
        expect(assigns(:hours).name).to eq("Name")
      end

      it "redirects to the hours controller on success" do
        put :create, service_point_id: service_point.id, availability_hours_exception: create_fields
        expect(response).to be_redirect
      end

      it "rerenders the new action when validation fails" do
        put :create, service_point_id: service_point.id, availability_hours_exception: { name: "" }

        expect(response).to be_success
      end
    end


    describe "#edit" do
      it "sends the hours" do
        hours = service_point.hours_exceptions.first
        get :edit, service_point_id: service_point.id, id: hours.id

        expect(assigns(:service_point)).to eq(service_point)
        expect(assigns(:hours)).to eq(hours)
      end
    end

    describe "#update" do
      let(:update_fields) { { name: "new Name", start_date: 1.month.ago, end_date: 1.month.from_now, hours: {:start_day => ['monday'], :end_day => ['sunday'], :hours => [ 'Open 24 Hours' ] } } }

      it "updates new hours " do
        post :update, service_point_id: service_point.id, id: service_point.hours_exceptions.first.id, availability_hours_exception: update_fields
        expect(assigns(:hours).name).to eq("new Name")
        expect(assigns(:hours).valid?).to be_truthy
      end

      it "redirects to the hours controller on success" do
        post :update, service_point_id: service_point.id, id: service_point.hours_exceptions.first.id, availability_hours_exception: update_fields
        expect(response).to be_redirect
      end

      it "rerenders the new action when validation fails" do
        post :update, service_point_id: service_point.id, id: service_point.hours_exceptions.first.id, availability_hours_exception: { name: ""}
        expect(response).to be_success
      end

    end
  end

  describe "anonymous" do
    it "should prompt to log in" do
      get :new, :service_point_id => service_point.id
      expect(response).to be_redirect
    end
  end
end
