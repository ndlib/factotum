FactoryGirl.define do

  sequence :subject_name do |n|
    "SubjectName#{n}"
  end

  sequence :lc_class do |n|
    "B#{n}-P#{n}"
  end

  factory :directory_subject, :class => 'DirectorySubject' do
  	name {generate(:subject_name)}
  	lc_class {generate(:lc_class)}
  end
end
