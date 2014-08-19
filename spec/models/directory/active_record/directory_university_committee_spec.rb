require 'spec_helper'

describe DirectoryUniversityCommittee do

  let(:directory_university_committee) { FactoryGirl.create(:directory_university_committee) }
  subject { directory_university_committee }
  describe "validations" do

	  let(:valid_params) { { name: "Mai Faverit Lerbery!" } }

    it "saves with valid params" do
      directory_university_committee.class.new(valid_params).save.should be_true
    end

    it "requires name to be unique" do
      data = valid_params
      data[:name] = directory_university_committee.name

      directory_university_committee.class.new(data).save.should be_false
    end

    it "has a url" do
      expect(subject.unit_url).to eq("http://library.nd.edu/directory/university_committees/#{subject.id}")
    end
  end




end
