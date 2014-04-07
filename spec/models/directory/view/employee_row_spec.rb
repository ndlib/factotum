require 'spec_helper'

describe EmployeeRow do
  let(:directory_employee_status) { FactoryGirl.create(:directory_employee_status) }
  let(:directory_employee_rank) { FactoryGirl.create(:directory_employee_rank) }

  before(:each) do
    @employee = FactoryGirl.create(:directory_employee, {status_id: directory_employee_status.id, rank_id: directory_employee_rank.id})
    @employee2 = FactoryGirl.create(:directory_employee, {status_id: directory_employee_status.id, rank_id: directory_employee_rank.id})
    @employee.stub(:has_subjects?).and_return(true)
    @employee2.stub(:has_subjects?).and_return(false)
    @employee_row = EmployeeRow.new(@employee)
    @employee_row2 = EmployeeRow.new(@employee2)
    @subject = FactoryGirl.create(:directory_subject)
    @subject2 = FactoryGirl.create(:directory_subject)
    @selector_subject = FactoryGirl.create(:directory_selector_subject, {subject_id: @subject2.id, employee_id: @employee.id})
    @selector_subject2 = FactoryGirl.create(:directory_selector_subject, {subject_id: @subject2.id, employee_id: @employee.id})
  end

  it "should reference the correct employee" do
    @employee_row.employee.should == @employee
  end


  it "should reference the correct employee attributes" do
    @employee_row.display_name.should eq @employee.display_name
    @employee_row.emails.first.should == @employee.emails.first
  end


  it "should report whether to show subject librarian icon" do
    @employee_row.show_subject_librarian_icon?.should be_true
    @employee_row2.show_subject_librarian_icon?.should be_false
  end


  it "should reference a partial with correct employee local var" do
    @employee_row.subject_librarian_subjects[:locals][:employee].should == @employee
  end

end
