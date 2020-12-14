require 'rails_helper'

describe DirectorySelectorSubject do

  let(:directory_selector_subject) { FactoryBot.create(:directory_selector_subject) }

  describe "validations" do

	let(:valid_params) { { employee_id: "1", subject_id: "1" } }

    it "saves with valid params" do
      expect(directory_selector_subject.class.new(valid_params).save).to be_truthy
    end

    it "requires employee" do
      data = valid_params
      data.delete(:employee_id)

      expect(directory_selector_subject.class.new(data).save).to be_falsey
    end

    it "requires subject" do
      data = valid_params
      data.delete(:subject_id)

      expect(directory_selector_subject.class.new(data).save).to be_falsey
    end

  end




end
