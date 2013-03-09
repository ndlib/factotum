
FactoryGirl.define do

  factory :call_number_range, class: Maps::CallNumberRange do
    collection_code "collection"
    sublibrary_code "sublibrary"
    begin_call_number 'PR0'
    end_call_number 'PZ100000'
    floor_map { FactoryGirl.create(:floor_map) }
  end

end