FactoryGirl.define do
  factory :author do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    image_url { Faker::Avatar.image }
    bio { Faker::Lorem.paragraphs(5).join('\n\n') }
  end
end
