require 'rails_helper'

describe DirectoryDepartment do

  before(:each) do
    @directory_department = FactoryBot.create(:directory_department)
    @directory_department2 = FactoryBot.create(:directory_department, {parent_organizational_unit_id: @directory_department.id})
    @directory_department3 = FactoryBot.create(:directory_department, {parent_organizational_unit_id: @directory_department2.id})
  end

  describe "validations" do

    it "has valid attributes" do
      expect(@directory_department.valid?).to be_truthy
    end


    it "requires name to be unique" do
      @directory_department2.name = @directory_department.name
      expect(@directory_department2.valid?).to be_falsey
    end


    it "requires the correct type assignment" do
      expect(@directory_department.type).to eq "DirectoryDepartment"
    end

  end

  describe "organizational structure" do

    let(:directory_employee_status) { FactoryBot.create(:directory_employee_status, {id: 1}) }
    let(:directory_employee_rank) { FactoryBot.create(:directory_employee_rank) }

    before(:each) do
      @employee = FactoryBot.create(:directory_employee,  {status_id: directory_employee_status.id, rank_id: directory_employee_rank.id})
      @employee2 = FactoryBot.create(:directory_employee, {status_id: directory_employee_status.id, rank_id: directory_employee_rank.id})
    end


    it "has the correct number of descendants" do
      expect(@directory_department.descendants_by_level.size).to eq(2)
      expect(@directory_department2.descendants_by_level.size).to eq(1)
    end


    it "includes self in total count" do
      expect(@directory_department.self_and_descendants_by_level.flatten.size).to eq(3)
    end


    it "should return managers for departments" do
      DirectoryEmployeeUnit.new({employee: @employee, organizational_unit: @directory_department, head: true}).save
      DirectoryEmployeeUnit.new({employee: @employee2, organizational_unit: @directory_department, head: true}).save
      expect(@directory_department.managers).to include(@employee)
      expect(@directory_department.managers.size).to eq(2)
    end

  end

end
