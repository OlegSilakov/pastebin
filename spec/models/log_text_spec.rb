require 'rails_helper'

describe "Log_text" do
	it "is valid" do
    log = LogText.new
    log.author_mail = "ex1@mail.com"
    log.description = "[13263] 2014-03-03 15:11:35 Request: /app_tracker/v1/callback"
    log.time_created = DateTime.now
	end

	it "isn't valid" do
    log = LogText.new
    # log.author_mail = ""
    log.description = "2014-03-03 15:11:40 Request: /app_tracker/v1/callback"
    log.time_created = DateTime.now
	end
end