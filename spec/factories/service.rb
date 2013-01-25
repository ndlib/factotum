FactoryGirl.define do

  sequence :code do |n|
    "code#{n}"
  end

  sequence :name do |n|
    "Service#{n}"
  end

  factory :service, :class => Hours::Service do
    name {generate(:name)}
    code {generate(:code)}
  end

end