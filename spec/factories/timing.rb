FactoryGirl.define do
  factory :timing do
    kind { Faker::DizzleIpsum.word }
    sequence(:quantity, 2) {|n| n * 2 }
    measurement 'hrs'
  end
end
