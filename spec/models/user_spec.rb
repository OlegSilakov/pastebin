require 'rails_helper'

describe "User" do
	it "is valid" do
		user = User.new
		user.email = "ex2@mail.ru"
		user.password = "123456789"
		expect { user be_valid }
	end

	it "is not vaild" do
		user = User.new
		user.email = "ex3@mail.com"
		user.password = "12345"
		expect { user.should_not be_valid }
	end
end