FactoryGirl.define do
  factory :logpost do
    user_mail "ex3@mail.com"
    content "[13263] 2014-03-03 15:11:45 Request: /app_tracker/v1/callback"
    date "2014-08-14 12:53:01"
  end
end