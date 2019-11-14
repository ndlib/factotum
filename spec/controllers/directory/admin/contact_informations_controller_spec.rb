require 'rails_helper'

describe Directory::Admin::ContactInformationsController do

  let(:directory_employee_status) { FactoryBot.create(:directory_employee_status, {id: 1}) }
  let(:directory_employee_rank) { FactoryBot.create(:directory_employee_rank) }
  let(:directory_employee) { FactoryBot.create(:directory_employee, {status_id: directory_employee_status.id, rank_id: directory_employee_rank.id}) }
  let(:directory_contact_phone) { FactoryBot.create(:directory_contact_phone, {contactable_id: directory_employee.id}) }

  before do
    login_user
  end

  describe "#new" do

    it "returns a successful response" do
      allow(controller).to receive('check_current_user_can_edit_this!').and_return(true)
      get :new, type: "DirectoryContactPhone", employee_id: directory_employee.id
      expect(response).to be_success
    end

    it "returns a not successful response for non admin" do
      get :new, type: "DirectoryContactPhone", employee_id: directory_employee.id
      expect(response).not_to be_success
    end

  end


  describe "#edit" do

    it "returns a successful response" do
      allow(controller).to receive('check_current_user_can_edit_this!').and_return(true)
      get :edit, id: directory_contact_phone.id
      expect(response).to be_success
    end


    it "returns a not successful response for non admin" do
      get :edit, id: directory_contact_phone.id
      expect(response).not_to be_success
    end

  end


end


