FactoryGirl.define do
  factory :traveller do
    name {Faker::Name.name}
    email  {Faker::Internet.email}
    password "password"
    password_confirmation "password"
  end
end