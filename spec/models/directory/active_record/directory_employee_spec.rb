require 'spec_helper'

describe DirectoryEmployee do

  let(:directory_status) { double(DirectoryEmployeeStatus, id: 1, name: 'mock_status')  }
  let(:directory_rank) { double(DirectoryEmployeeRank, id: 1, name: 'mock_rank')  }

  describe "Employee validation" do

    let(:valid_params) { { netid: "fffff3", first_name: "Mock", last_name: "Employee", status_id: directory_status.id, rank_id: directory_rank.id } } 

    it "should save with valid params" do
      DirectoryEmployee.new(valid_params).save.should be_true
    end 


    it "should not validate duplicate netid" do
      DirectoryEmployee.new(valid_params).save.should be_true
      DirectoryEmployee.new(valid_params).valid?.should be_false
    end 


    it "requires a netid" do 
      data = valid_params
      data.delete(:netid)
      DirectoryEmployee.new(data).valid?.should be_false
    end


    it "requires a first and last name" do 
      data = valid_params
      data.delete(:first_name)
      data.delete(:last_name)
      DirectoryEmployee.new(data).valid?.should be_false
    end


    it "requires a status" do 
      data = valid_params
      data.delete(:status_id)
      DirectoryEmployee.new(data).valid?.should be_false
    end


    it "should strip whitespace and make the netid lowercase prior to validation" do
      e = DirectoryEmployee.new(valid_params)
      e.netid = " TEST "
      e.valid?.should be_true
      e.netid.should eq('test')
    end


    it "should only allow a-z0-9 in netids" do
      e = DirectoryEmployee.new(valid_params)
      e.netid = "test_1"
      e.valid?.should be_false
    end


    it "should allow a-z0-9 in netids" do
      e = DirectoryEmployee.new(valid_params)
      e.netid = "test1"
      e.valid?.should be_true
    end

  end


  describe "Subordinates" do

    let(:mock_subordinates) { FactoryGirl.create_list(:directory_employee, 3) }
    let(:second_degree_mock_subordinates) { FactoryGirl.create_list(:directory_employee, 2) }
    let(:second_degree_mock_subordinates2) { FactoryGirl.create_list(:directory_employee, 4) }

    before(:each) do
      @employee = FactoryGirl.create(:directory_employee)
      @employee2 = FactoryGirl.create(:directory_employee)
      @employee3 = FactoryGirl.create(:directory_employee, {supervisor_id: @employee2.id})
      @employee4 = FactoryGirl.create(:directory_employee, {supervisor_id: @employee2.id})
      @employee.stub(:subordinates).and_return(mock_subordinates)
      mock_subordinates.stub(:sorted).and_return(mock_subordinates)
      mock_subordinates[0].stub(:descendents).and_return(second_degree_mock_subordinates)
      mock_subordinates[1].stub(:descendents).and_return(second_degree_mock_subordinates2)
    end

    it "should return all descendents" do
      @employee.descendents.should have(9).items 
    end

    it "should return parent employee plus descendents" do
      @employee.self_and_descendents.should have(10).items 
    end

    it "should return direct reports" do
      @employee2.subordinates.should have(2).items
    end

  end


  describe "Principles" do

    before(:each) do
      @employee = FactoryGirl.create(:directory_employee)
      @employee2 = FactoryGirl.create(:directory_employee, {supervisor_id: @employee.id})
      @employee3 = FactoryGirl.create(:directory_employee, {supervisor_id: @employee2.id})
      @employee4 = FactoryGirl.create(:directory_employee, {supervisor_id: @employee3.id})
    end

    it "should return the correct number of principles" do
      @employee4.principles.should have(3).items
    end

    it "should return principle list in reverse supervisory order" do
      @employee4.principles.last.should == @employee
      @employee4.principles.second.should == @employee2
      @employee4.principles.first.should == @employee3
    end

  end


  describe "Subjects" do
    
    before(:each) do
      @subject = FactoryGirl.create(:directory_subject)
      @subject2 = FactoryGirl.create(:directory_subject)
      @subject3 = FactoryGirl.create(:directory_subject)
      @subject4 = FactoryGirl.create(:directory_subject)
      @employee = FactoryGirl.create(:directory_employee)
      @employee2 = FactoryGirl.create(:directory_employee)
      @employee3 = FactoryGirl.create(:directory_employee)
      @selector_subject = FactoryGirl.create(:directory_selector_subject, {subject_id: @subject2.id, employee_id: @employee.id})
      @selector_subject2 = FactoryGirl.create(:directory_selector_subject, {subject_id: @subject3.id, employee_id: @employee.id})
      @selector_subject3 = FactoryGirl.create(:directory_selector_subject, {subject_id: @subject.id, employee_id: @employee2.id})
      @selector_subject4 = FactoryGirl.create(:directory_selector_subject, {subject_id: @subject3.id, employee_id: @employee2.id})
    end

    it "should return list of assigned subjects" do
      @employee.subjects.should have(2).items
      @employee.subjects.should include(@subject3)
    end

    it "should return correct list of subjects" do
      @employee2.subjects.should have(2).items
      @employee2.subjects.should_not include(@subject2)
    end

    it "should report whether employee is subject librarian" do
      @employee3.has_subjects?.should be_false
      @employee2.has_subjects?.should be_true
    end

  end

end
