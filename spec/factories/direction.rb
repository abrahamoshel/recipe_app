FactoryGirl.define do
  factory :direction do
    sequence(:order, 1)
    instruction { Faker::DizzleIpsum.paragraph }
  end
end
