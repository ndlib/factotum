FactoryGirl.define do

  sequence :code do |n|
    "code#{n}"
  end

  sequence :name do |n|
    "ServicePoint#{n}"
  end

  sequence :primary_contact_netid do |n|
    "netid#{n}"
  end

  factory :service_point, :class => Availability::ServicePoint do
    name {generate(:name)}
    code {generate(:code)}
    primary_contact_netid {generate(:primary_contact_netid)}
  end

end
