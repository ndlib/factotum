require 'spec_helper'

describe Directory::Subject do
  
  let(:directory_subject) { FactoryGirl.create(:directory_subject) }

  describe "validations" do

	let(:valid_params) { { name: "Lerbery" } } 

    it "saves with valid params" do
      directory_subject.class.new(valid_params).save.should be_true
    end 

    it "requires name " do 
      data = valid_params
      data.delete(:name)

      directory_subject.class.new(data).save.should be_false
    end

  end

  
end
