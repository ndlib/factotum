require 'rails_helper'

describe DirectoryDepartment do

  before(:each) do
    @directory_department = FactoryGirl.create(:directory_department)
    @directory_department2 = FactoryGirl.create(:directory_department, {parent_organizational_unit_id: @directory_department.id})
    @directory_department3 = FactoryGirl.create(:directory_department, {parent_organizational_unit_id: @directory_department2.id})
  end

  describe "validations" do

    it "has valid attributes" do
      @directory_department.valid?.should be_true
    end


    it "requires name to be unique" do
      @directory_department2.name = @directory_department.name
      @directory_department2.valid?.should be_false
    end


    it "requires the correct type assignment" do
      @directory_department.type.should eq "DirectoryDepartment"
    end

  end

  describe "organizational structure" do

    let(:directory_employee_status) { FactoryGirl.create(:directory_employee_status, {id: 1}) }
    let(:directory_employee_rank) { FactoryGirl.create(:directory_employee_rank) }

    before(:each) do
      @employee = FactoryGirl.create(:directory_employee,  {status_id: directory_employee_status.id, rank_id: directory_employee_rank.id})
      @employee2 = FactoryGirl.create(:directory_employee, {status_id: directory_employee_status.id, rank_id: directory_employee_rank.id})
    end


    it "has the correct number of descendants" do
      @directory_department.descendants_by_level.should have_exactly(2).items
      @directory_department2.descendants_by_level.should have_exactly(1).items
    end


    it "includes self in total count" do
      @directory_department.self_and_descendants_by_level.flatten.should have_exactly(3).items
    end


    it "should return managers for departments" do
      DirectoryEmployeeUnit.new({employee: @employee, organizational_unit: @directory_department, head: true}).save
      DirectoryEmployeeUnit.new({employee: @employee2, organizational_unit: @directory_department, head: true}).save
      @directory_department.managers.should include(@employee)
      @directory_department.managers.should have_exactly(2).items
    end

  end

end
