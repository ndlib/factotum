require 'rails_helper'

describe DirectoryOrganizationalUnit do
  subject { described_class.new }

  it 'has a unit url' do
    subject.id = 1
    expect(subject.unit_url).to eq("http://library.nd.edu/directory/departments/#{subject.id}")
  end
end
