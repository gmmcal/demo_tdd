FactoryGirl.define do
  factory :writer do
    name { Faker::Name.name }
    image_url { Faker::Avatar.image }
    bio { Faker::Lorem.paragraphs(5).join('\n\n') }
  end
end
