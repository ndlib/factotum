FactoryBot.define do
  factory :monographic_order, parent: :acquisition_order, class: MonographicOrder do
    rush_order { false }
    cataloging_location { "HESB/GEN" }
  end
end
