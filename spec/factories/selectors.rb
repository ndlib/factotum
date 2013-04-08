# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :selector do
    sequence(:netid) { |n| "testselector#{n}" }
    monographic true

    after :build do |selector|
      if selector.selector_funds.blank?
        selector.selector_funds = FactoryGirl.build_list(:selector_fund, 3, selector: selector)
      end
      if selector.user.blank?
        selector.user = FactoryGirl.build(:user, username: selector.netid)
      end
    end

    factory :selector_admin do
      monographic false
      admin true
    end
  end
end
