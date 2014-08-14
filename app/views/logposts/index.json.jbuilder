json.array!(@logposts) do |logpost|
  json.extract! logpost, :id, :user_mail, :content, :date
  json.url logpost_url(logpost, format: :json)
end
