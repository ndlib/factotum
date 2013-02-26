FactoryGirl.define do

  factory :floor do
    name "Floor name"
    library { FactoryGirl.create(:library, code: 'hesburgh') }
  end
  
end