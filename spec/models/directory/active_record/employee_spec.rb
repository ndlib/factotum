require 'spec_helper'

describe DirectoryEmployee do

  let(:directory_employee) { FactoryGirl.create(:directory_employee) }

  describe "validations" do

    let(:valid_params) { { netid: "fffff3" } } 

    it "saves with valid params" do
      directory_employee.class.new(valid_params).save.should be_true
    end 

    it "requires netid " do 
      data = valid_params
      data.delete(:netid)

      directory_employee.class.new(data).save.should be_false
    end
  end
  
  it "should strip whitespace and make the netid lowercase" do
    e = directory_employee.class.new(:netid => " TEST ")
    e.save.should be_true
    e.netid.should eq('test')
  end

  it "should only allow a-z0-9 in netids" do
    directory_employee.class.new(:netid => "test_1").save.should be_false
  end

  it "should allow a-z0-9 in netids" do
    directory_employee.class.new(:netid => "test1").save.should be_true
  end


end
