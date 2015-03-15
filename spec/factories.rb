FactoryGirl.define do  factory :bucket_list_items_comment do
    traveller_id 1
bucket_list_items_id 1
comment "MyString"
  end
  factory :bucket_list_items_comment do
    comment_id 1
bucket_list_items_id 1
  end

  factory :traveller do
    name {Faker::Name.name}
    email  {Faker::Internet.email}
    password "password"
    password_confirmation "password"
  end

  factory :activity do
    name {Faker::Lorem.words(2)}
    image_url {Faker::Avatar.image}
    location {Faker::Address.city}
    destination
  end

  factory :destination do
    name {Faker::Address.country}
    image_url {Faker::Avatar.image}
  end
  
end