# Read about factories at https//github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :purchase_request do
    requester_netid "jkennel"
    requester_email "jkennel@nd.edu"
    requester_name "Jaron Kennel"
    requester_department "Hesburgh Libraries"
    requester_phone "123-456-7890"
    requester_affiliation "Staff"
    requester_address "208 Hesburgh Library\nNotre Dame, IN 46556-5629"
    requester_notification_preference "Email"
    hold_for_requester false
    checked_online_catalog true
    comments "These are comments"
    subject "Accounting"
    format "Book"
    author "Example Author"
    title "Example Title"
  end
end
