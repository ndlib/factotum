require 'rails_helper'

describe PurchaseRequestsController do
  describe "user" do
    before do
      login_user
    end

    describe '#new' do
      it "allows access" do
        get :new
        expect(response).to be_success
      end

      it "prefills data from the user" do
        get :new
        expect(response).to be_success
        purchase_request = assigns(:purchase_request)
        expect(purchase_request).to be_a_kind_of PurchaseRequest
        expect(purchase_request.requester_name).to be == subject.current_user.display_name
        expect(purchase_request.requester_email).to be == subject.current_user.email
        expect(purchase_request.requester_phone).to be == subject.current_user.phone
        expect(purchase_request.requester_address).to be == subject.current_user.address
        expect(purchase_request.requester_department).to be == subject.current_user.department
        expect(purchase_request.requester_affiliation).to be == subject.current_user.affiliation
      end
    end

    describe "#create" do
      before do
        @new_request = FactoryBot.build(:purchase_request)
      end

      it "should allow new recommendations to be made" do
        post :create, purchase_request: @new_request.attributes
        expect(response).to be_redirect
        purchase_request = assigns(:purchase_request)
        expect(purchase_request).to be_a_kind_of PurchaseRequest
        expect(purchase_request).to be_valid
        expect(purchase_request.requester_netid).to be == subject.current_user.netid
        expect(response).to redirect_to(purchase_request_path)
      end

      it "sends an email to the email address for the subject, and a copy to the requester" do
        expect {
          post :create, purchase_request: @new_request.attributes
        }.to change(ActionMailer::Base.deliveries, :size).by(2)
      end
    end
  end

  describe "anonymous" do
    it "requires authentication" do
      get :new
      expect(response).to be_redirect
    end
  end
end
