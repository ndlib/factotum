FactoryGirl.define do
  factory :refworks_password_reset do
    email do
      cache = FactoryGirl.create(:refworks_cache)
      cache.email
    end
  end
end