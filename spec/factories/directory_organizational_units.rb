# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :directory_department, :class => 'DirectoryDepartment' do
  	name "IT Department"
  end

  factory :directory_library_committee, :class => 'DirectoryLibraryCommittee' do
  	name "IT Committee 2"
  end

  factory :directory_university_committee, :class => 'DirectoryUniversityCommittee' do
  	name "IT Committee 3"
  end



end
