FactoryBot.define do
  factory :just_say_yes_order, parent: :acquisition_order, class: JustSayYesOrder do
    rush_order { false }
    price { 50 }
    requester { "Jaron" }
    cataloging_location { "Some Location" }
    electronic_resource { false }
    fund { "PCJSY" }
  end
end
