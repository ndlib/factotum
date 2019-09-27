require 'rails_helper'

describe DirectoryUniversityCommittee do

  let(:directory_university_committee) { FactoryBot.create(:directory_university_committee) }
  subject { directory_university_committee }
  describe "validations" do

	  let(:valid_params) { { name: "Mai Faverit Lerbery!" } }

    it "saves with valid params" do
      expect(directory_university_committee.class.new(valid_params).save).to be_truthy
    end

    it "requires name to be unique" do
      data = valid_params
      data[:name] = directory_university_committee.name

      expect(directory_university_committee.class.new(data).save).to be_falsey
    end

    it "has a url" do
      expect(subject.unit_url).to eq("http://library.nd.edu/directory/university_committees/#{subject.id}")
    end
  end




end
