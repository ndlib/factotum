FactoryGirl.define do

  factory :floor do
    name "Floor name"
    library { FactoryGirl.create(:library) }
  end
  
end