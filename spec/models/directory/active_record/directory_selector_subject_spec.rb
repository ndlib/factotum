require 'rails_helper'

describe DirectorySelectorSubject do

  let(:directory_selector_subject) { FactoryGirl.create(:directory_selector_subject) }

  describe "validations" do

	let(:valid_params) { { employee_id: "1", subject_id: "1" } }

    it "saves with valid params" do
      directory_selector_subject.class.new(valid_params).save.should be_true
    end

    it "requires employee" do
      data = valid_params
      data.delete(:employee_id)

      directory_selector_subject.class.new(data).save.should be_false
    end

    it "requires subject" do
      data = valid_params
      data.delete(:subject_id)

      directory_selector_subject.class.new(data).save.should be_false
    end

  end




end
