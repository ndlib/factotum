require 'spec_helper'

describe Floor do
  let(:library) {FactoryGirl.create(:library)}
  let(:floor) { FactoryGirl.create(:floor)}

  describe "validations" do
    let(:valid_params) { { name: "1st", library_id: library.id } } 

    it "saves with valid params" do 
      Floor.new(valid_params).save.should be_true
    end 

    it "requires name " do 
      data = valid_params
      data.delete(:name)

      Floor.new(data).save.should be_false
    end

    it "requires a libaray " do
      data = valid_params
      data.delete(:library_id)

      Floor.new(data).save.should be_false
    end
  end

  it "allows you to add a library " do
    f = floor
    f.library = library
    f.save! 

    f.reload
    f.library = library
  end
end