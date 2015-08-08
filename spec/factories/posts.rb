FactoryGirl.define do
  factory :post do
    name { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraphs(5).join('\n\n') }
  end
end
