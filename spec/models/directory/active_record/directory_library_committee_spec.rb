require 'spec_helper'

describe DirectoryLibraryCommittee do
  
  let(:directory_library_committee) { FactoryGirl.create(:directory_library_committee) }

  describe "validations" do

	let(:valid_params) { { name: "My Faverit Lerbery!" } } 

    it "saves with valid params" do
    	#binding.pry
      directory_library_committee.class.new(valid_params).save.should be_true
    end 

    it "requires name to be unique" do 
      data = valid_params
      data[:name] = directory_library_committee.name

      directory_library_committee.class.new(data).save.should be_false
    end


  end




end
