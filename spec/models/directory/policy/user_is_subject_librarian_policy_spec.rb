require 'rails_helper'

describe UserIsSubjectLibrarianPolicy do

  before(:each) do
    @employee = double(DirectoryEmployee, id: 1, netid: 'stub_emp1')
    allow(@employee).to receive(:has_subjects?).and_return(true)
    @policy = UserIsSubjectLibrarianPolicy.new(@employee)
  end

  it "returns true if employee is subject librarian" do
    expect(@policy.is_subject_librarian?).to be_truthy
  end

  it "returns false if employee is not a subject librarian" do
    allow(@employee).to receive(:has_subjects?).and_return(false)
    expect(@policy.is_subject_librarian?).to be_falsey
  end

end
