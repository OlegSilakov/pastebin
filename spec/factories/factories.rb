FactoryGirl.define do
  sequence :email do |n|
    "email#{n}@example.com"
  end

  factory :user do
    email
    password "ilovegrapes"
    password_confirmation "ilovegrapes"
  end
end