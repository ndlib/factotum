FactoryBot.define do
  factory :refworks_password_reset do
    email_or_login do
      cache = FactoryBot.create(:refworks_user)
      cache.email
    end
  end
end