require 'rails_helper'

describe EmployeeRow do
  let(:directory_employee_status) { FactoryBot.create(:directory_employee_status) }
  let(:directory_employee_rank) { FactoryBot.create(:directory_employee_rank) }

  before(:each) do
    @employee = FactoryBot.create(:directory_employee, {status_id: directory_employee_status.id, rank_id: directory_employee_rank.id})
    @employee2 = FactoryBot.create(:directory_employee, {status_id: directory_employee_status.id, rank_id: directory_employee_rank.id})
    allow(@employee).to receive(:has_subjects?).and_return(true)
    allow(@employee2).to receive(:has_subjects?).and_return(false)
    @employee_row = EmployeeRow.new(@employee)
    @employee_row2 = EmployeeRow.new(@employee2)
    @subject = FactoryBot.create(:directory_subject)
    @subject2 = FactoryBot.create(:directory_subject)
    @selector_subject = FactoryBot.create(:directory_selector_subject, {subject_id: @subject2.id, employee_id: @employee.id})
    @selector_subject2 = FactoryBot.create(:directory_selector_subject, {subject_id: @subject2.id, employee_id: @employee.id})
  end

  it "should reference the correct employee" do
    expect(@employee_row.employee).to eq(@employee)
  end


  it "should reference the correct employee attributes" do
    expect(@employee_row.display_name).to eq @employee.display_name
    expect(@employee_row.emails.first).to eq(@employee.emails.first)
  end


  it "should report whether to show subject librarian icon" do
    expect(@employee_row.show_subject_librarian_icon?).to be_truthy
    expect(@employee_row2.show_subject_librarian_icon?).to be_falsey
  end


  it "should reference a partial with correct employee local var" do
    expect(@employee_row.subject_librarian_subjects[:locals][:employee]).to eq(@employee)
  end

end
