World(FactoryGirl::Syntax::Methods)
FactoryGirl.define do
  factory :traveller do
    name "John"
    email  "jdawg@hotmail.com"
    password "password"
    password_confirmation "password"
  end
end