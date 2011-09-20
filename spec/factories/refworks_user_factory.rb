FactoryGirl.define do
  factory :refworks_user do
    sequence(:refworks_id) { |n| n }
    sequence(:login) { |n| "test#{n}" }
    sequence(:email) { |n| "test#{n}@nd.edu" }
    sequence(:name) { |n| "Test User #{n}" }
    number_of_logins 1
    last_ref_id 1
    last_login_date 1.days.ago(Time.now)
    refworks_creation_date 2.days.ago(Time.now)
    browser_info "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7; rv:6.0.2) Gecko/20100101 Firefox/6.0.2|IP=129.74.226.127Lang=en-us,en;q=0.5"
  end

  factory :refworks_test_user, :parent => :refworks_user do
    refworks_id 7369
    login "ndrefworkstest"
    name "Refworks Test"
    email "jkennel@nd.edu"
  end
end