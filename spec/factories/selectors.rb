FactoryBot.define do
  factory :selector do
    sequence(:netid) { |n| "testselector#{n}" }
    monographic { true }

    after :build do |selector|
      if selector.selector_funds.blank?
        selector.selector_funds = FactoryBot.build_list(:selector_fund, 3, selector: selector)
      end
      if selector.user.blank?
        selector.user = FactoryBot.build(:user, username: selector.netid)
      end
    end

    factory :selector_admin do
      monographic { false }
      admin { true }
    end
  end
end
