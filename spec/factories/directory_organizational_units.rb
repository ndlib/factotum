FactoryGirl.define do
  
  sequence :directory_dept_name do |n|
    "Department#{n}"
  end
  
  sequence :directory_comm_name do |n|
    "Committee#{n}"
  end
  
  sequence :directory_team_name do |n|
    "Team#{n}"
  end

  factory :directory_department, :class => 'DirectoryDepartment' do
  	name {generate(:directory_dept_name)}
  end

  factory :directory_library_team, :class => 'DirectoryLibraryTeam' do
  	name {generate(:directory_team_name)}
  end

  factory :directory_university_committee, :class => 'DirectoryUniversityCommittee' do
  	name {generate(:directory_comm_name)}
  end

end
