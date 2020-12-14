# Read about factories at http://github.com/thoughtbot/factory_bot

FactoryBot.define do

  factory :directory_admin_user, class: 'Directory::User' do |u|
    u.username { 'adminuser' }
    # u.admin true
  end


  factory :directory_user, class: 'Directory::User' do |u|
    u.username { 'nonadmin' }
    # u.admin false
  end


end


