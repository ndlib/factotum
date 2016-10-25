require 'rails_helper'

describe SubjectRow do
  let(:directory_employee_status) { FactoryGirl.create(:directory_employee_status) }
  let(:directory_employee_rank) { FactoryGirl.create(:directory_employee_rank) }

  before(:each) do
    @employee = FactoryGirl.create(:directory_employee, {status_id: directory_employee_status.id, rank_id: directory_employee_rank.id})
    @employee2 = FactoryGirl.create(:directory_employee, {status_id: directory_employee_status.id, rank_id: directory_employee_rank.id})
    @employee3 = FactoryGirl.create(:directory_employee, {status_id: directory_employee_status.id, rank_id: directory_employee_rank.id})
    @subject = FactoryGirl.create(:directory_subject)
    @subject2 = FactoryGirl.create(:directory_subject)
    @subject_row = SubjectRow.new(@subject)
    @subject_row2 = SubjectRow.new(@subject2)
    @selector_subject = FactoryGirl.create(:directory_selector_subject, {subject: @subject2, employee: @employee})
    @selector_subject2= FactoryGirl.create(:directory_selector_subject, {subject: @subject2, employee: @employee2})
    @selector_subject3 = FactoryGirl.create(:directory_selector_subject, {subject: @subject2, employee: @employee})
  end

  it "should reference the correct subject" do
    expect(@subject_row.subject).to eq(@subject)
  end


  it "should reference the correct subject attributes" do
    expect(@subject_row.name).to eq @subject.name
    expect(@subject_row.lc_class).to eq(@subject.lc_class)
  end


end
