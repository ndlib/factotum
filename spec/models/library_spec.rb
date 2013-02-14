require 'spec_helper'

describe Library do
  let(:library) {FactoryGirl.create(:library)}
  let(:floor) { FactoryGirl.create(:floor)}

  describe "validations" do
    let(:valid_params) { { name: "Libaray", code: 'code' } } 


    it "saves with valid params" do
      Library.new(valid_params).save.should be_true
    end 

    it "requires name " do 
      data = valid_params
      data.delete(:name)

      Library.new(data).save.should be_false
    end

    it "requires a code " do
      data = valid_params
      data.delete(:code)

      Library.new(data).save.should be_false
    end

    it "requrires a unique code " do
      data = valid_params
      data[:code] = library.code

      Library.new(data).save.should be_false
    end
  end
 

  it "allows you to add floors " do
    l = library
    l.floors << floor
    l.save! 

    l.reload
    l.floors = [floor]
  end
end