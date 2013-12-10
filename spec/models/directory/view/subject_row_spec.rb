require 'spec_helper'

describe SubjectRow do

  before(:each) do
    @employee = FactoryGirl.create(:directory_employee)
    @employee2 = FactoryGirl.create(:directory_employee)
    @employee3 = FactoryGirl.create(:directory_employee)
    @subject = FactoryGirl.create(:directory_subject)
    @subject2 = FactoryGirl.create(:directory_subject)
    @subject_row = SubjectRow.new(@subject)
    @subject_row2 = SubjectRow.new(@subject2)
    @selector_subject = FactoryGirl.create(:directory_selector_subject, {subject_id: @subject2.id, employee_id: @employee.id})
    @selector_subject2= FactoryGirl.create(:directory_selector_subject, {subject_id: @subject2.id, employee_id: @employee2.id})
    @selector_subject3 = FactoryGirl.create(:directory_selector_subject, {subject_id: @subject2.id, employee_id: @employee.id})
  end

  it "should reference the correct subject" do
    @subject_row.subject.should == @subject
  end


  it "should reference the correct subject attributes" do
    @subject_row.name.should eq @subject.name
    @subject_row.lc_class.should == @subject.lc_class
  end

  
  it "should return correct value for subject librarian list" do
    @subject_row2.subject_librarians.should include(@employee2)
  end

end
