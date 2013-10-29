require 'spec_helper'

describe Directory::AdministrativeUser do

  let(:directory_administrative_user) { FactoryGirl.create(:directory_administrative_user) }

  describe "validations" do

	let(:valid_params) { { username: "LerberyAdmin" } } 

    it "saves with valid params" do
      directory_administrative_user.class.new(valid_params).save.should be_true
    end 

    it "requires username " do 
      data = valid_params
      data.delete(:username)

      directory_administrative_user.class.new(data).save.should be_false
    end

  end


end
