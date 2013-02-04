FactoryGirl.define do

  sequence :code do |n|
    "code#{n}"
  end

  sequence :name do |n|
    "ServicePoint#{n}"
  end

  factory :service_point, :class => Hours::ServicePoint do
    name {generate(:name)}
    code {generate(:code)}
  end

end