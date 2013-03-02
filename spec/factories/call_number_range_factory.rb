
FactoryGirl.define do

  factory :call_number_range, class: Maps::CallNumberRange do
    collection_code "collection"
    sublibrary_code "sublibrary"
    begin_call_number '1111'
    end_call_number '2222'
    map_file { FactoryGirl.create(:map_file) }
  end

end