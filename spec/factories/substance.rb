FactoryGirl.define do
  factory :substance do
    name { Faker::DizzleIpsum.word }
    description { Faker::DizzleIpsum.paragraph }

    factory :with_substitutes do
      substitutes { FactoryGirl.build_list(:substance, 3) }
    end
  end
end
