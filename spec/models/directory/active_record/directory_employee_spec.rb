require 'rails_helper'

describe DirectoryEmployee do

  let(:directory_status) { FactoryGirl.create(:directory_employee_status) }
  let(:directory_rank) { FactoryGirl.create(:directory_employee_rank)  }
  subject { FactoryGirl.create(:directory_employee, {status_id: directory_status.id, rank_id: directory_rank.id}) }

  describe "Employee validation" do

    let(:valid_params) { { netid: "fffff3", first_name: "Mock", last_name: "Employee", status_id: directory_status.id, rank_id: directory_rank.id } }

    it "should save with valid params" do
      expect(DirectoryEmployee.new(valid_params).save).to be_truthy
    end


    it "should not validate duplicate netid" do
      expect(DirectoryEmployee.new(valid_params).save).to be_truthy
      expect(DirectoryEmployee.new(valid_params).valid?).to be_falsey
    end


    it "requires a netid" do
      data = valid_params
      data.delete(:netid)
      expect(DirectoryEmployee.new(data).valid?).to be_falsey
    end


    it "requires a first and last name" do
      data = valid_params
      data.delete(:first_name)
      data.delete(:last_name)
      expect(DirectoryEmployee.new(data).valid?).to be_falsey
    end


    it "should strip whitespace and make the netid lowercase prior to validation" do
      e = DirectoryEmployee.new(valid_params)
      e.netid = " TEST "
      expect(e.valid?).to be_truthy
      expect(e.netid).to eq('test')
    end


    it "should only allow a-z0-9 in netids" do
      e = DirectoryEmployee.new(valid_params)
      e.netid = "test_1"
      expect(e.valid?).to be_falsey
    end


    it "should allow a-z0-9 in netids" do
      e = DirectoryEmployee.new(valid_params)
      e.netid = "test1"
      expect(e.valid?).to be_truthy
    end

  end


  describe "Subordinates" do

    let(:mock_subordinates) { FactoryGirl.create_list(:directory_employee, 3, {status_id: directory_status.id, rank_id: directory_rank.id}) }
    let(:second_degree_mock_subordinates) { FactoryGirl.create_list(:directory_employee, 2, {status_id: directory_status.id, rank_id: directory_rank.id}) }
    let(:second_degree_mock_subordinates2) { FactoryGirl.create_list(:directory_employee, 4, {status_id: directory_status.id, rank_id: directory_rank.id}) }

    let(:employee) { FactoryGirl.create(:directory_employee, {status_id: directory_status.id, rank_id: directory_rank.id}) }
    let(:employee2) { FactoryGirl.create(:directory_employee, {supervisor: employee, status_id: directory_status.id, rank_id: directory_rank.id}) }
    let(:employee3) { FactoryGirl.create(:directory_employee, {supervisor: employee2, status_id: directory_status.id, rank_id: directory_rank.id}) }
    let(:employee4) { FactoryGirl.create(:directory_employee, {supervisor: employee2, status_id: directory_status.id, rank_id: directory_rank.id}) }

    before(:each) do
      allow(employee).to receive(:subordinates).and_return(mock_subordinates)
      allow(mock_subordinates).to receive(:sorted).and_return(mock_subordinates)
      allow(mock_subordinates[0]).to receive(:descendents).and_return(second_degree_mock_subordinates)
      allow(mock_subordinates[1]).to receive(:descendents).and_return(second_degree_mock_subordinates2)
    end


    it "should return all descendents" do
      expect(employee.descendents.size).to eq(9)
    end

    it "should return parent employee plus descendents" do
      expect(employee.self_and_descendents.size).to eq(10)
    end


  end

  describe "Principles" do
    let (:employee) { FactoryGirl.create(:directory_employee, {status_id: directory_status.id, rank_id: directory_rank.id}) }
    let (:employee2) { FactoryGirl.create(:directory_employee, {supervisor: employee, status_id: directory_status.id, rank_id: directory_rank.id}) }
    let (:employee3) { FactoryGirl.create(:directory_employee, {supervisor: employee2, status_id: directory_status.id, rank_id: directory_rank.id}) }
    let (:employee4) {  FactoryGirl.create(:directory_employee, {supervisor: employee3, status_id: directory_status.id, rank_id: directory_rank.id}) }

    it "should return the correct number of principles" do
      expect(employee4.principles.size).to eq(3)
    end

    it "should return principle list in reverse supervisory order" do
      expect(employee4.principles.last).to eq(employee)
      expect(employee4.principles.second).to eq(employee2)
      expect(employee4.principles.first).to eq(employee3)
    end

  end


  describe "Subjects" do

    before(:each) do
      @subject = FactoryGirl.create(:directory_subject)
      @subject2 = FactoryGirl.create(:directory_subject)
      @subject3 = FactoryGirl.create(:directory_subject)
      @subject4 = FactoryGirl.create(:directory_subject)
      @employee = FactoryGirl.create(:directory_employee, {status_id: directory_status.id, rank_id: directory_rank.id})
      @employee2 = FactoryGirl.create(:directory_employee, {status_id: directory_status.id, rank_id: directory_rank.id})
      @employee3 = FactoryGirl.create(:directory_employee, {status_id: directory_status.id, rank_id: directory_rank.id})
      @selector_subject = FactoryGirl.create(:directory_selector_subject, {subject_id: @subject2.id, employee_id: @employee.id})
      @selector_subject2 = FactoryGirl.create(:directory_selector_subject, {subject_id: @subject3.id, employee_id: @employee.id})
      @selector_subject3 = FactoryGirl.create(:directory_selector_subject, {subject_id: @subject.id, employee_id: @employee2.id})
      @selector_subject4 = FactoryGirl.create(:directory_selector_subject, {subject_id: @subject3.id, employee_id: @employee2.id})
    end

    it "should return list of assigned subjects" do
      expect(@employee.subjects.size).to eq(2)
      expect(@employee.subjects).to include(@subject3)
    end

    it "should return correct list of subjects" do
      expect(@employee2.subjects.size).to eq(2)
      expect(@employee2.subjects).not_to include(@subject2)
    end

    it "should report whether employee is subject librarian" do
      expect(@employee3.has_subjects?).to be_falsey
      expect(@employee2.has_subjects?).to be_truthy
    end

  end

  describe 'instance' do
    it 'has a url' do
      expect(subject.emp_url).to eq("http://library.nd.edu/directory/employees/#{subject.netid}")
    end
  end

end
