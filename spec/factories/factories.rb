FactoryGirl.define do
  sequence :email do |n|
    "email#{n}@example.com"
  end

  factory :user do
    email
    password "ilovegrapes"
    password_confirmation "ilovegrapes"
  end

  factory :logpost do
    email
    content "[13263] 2014-03-03 15:11:45 Request: /app_tracker/v1/callback"
    date 2014-08-14 12:53:01
  end
end