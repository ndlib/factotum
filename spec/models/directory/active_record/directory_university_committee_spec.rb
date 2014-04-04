require 'spec_helper'

describe DirectoryUniversityCommittee do
  
  let(:directory_university_committee) { FactoryGirl.create(:directory_university_committee) }

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


  end




end
