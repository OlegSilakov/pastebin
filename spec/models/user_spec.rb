require 'rails_helper'

describe "User" do
  before(:each) do
    @user = User.new
  end
  
  context "is pass validation with right length of password and " do
	  before(:each) do
      @user.password = "123456789"
    end

    it "ru domain" do
		  @user.email = "ex2@mail.ru"
		  expect(@user).to be_valid
	  end
    
    it "com domain" do
      @user.email = "ex2@mail.com"
      expect(@user).to be_valid
    end

    it "net domain" do
      @user.email = "ex2@mail.net"
      expect(@user).to be_valid
    end

    it "custom domain" do
      @user.email = "ex2@funbox.ru"
      expect(@user).to be_valid
    end    
  end

  context "is pass validation with right email and" do
    before(:each) do
      @user.email = "example@mail.com"
    end

    it "number password" do
      @user.password = "1234567890"
      expect(@user).to be_valid
    end
    
    it "alphabet password" do
      @user.password = "qwertyuiopasdfghjkl"
      expect(@user).to be_valid
    end

    it "number and alphabet password" do
      @user.password = "q1w2e3r4t5y6u7i8o9"
      expect(@user).to be_valid
    end

    it "special symbols password" do
      @user.password = "!@$%&*0000"
      expect(@user).to be_valid
    end

    it "combine password" do
      @user.password = "q1w2e3r4t5!$@&"
      expect(@user).to be_valid
    end
  end

  context "isn't pass validation with right password and" do
    before(:each) do
      @user.password = "123456789"
    end

    it "without @ symbol in email" do
      @user.email = "ex3mail.com"
      expect(@user).not_to be_valid
    end

    it "without dot and domain" do
      @user.email = "ex3@mail"
      expect(@user).not_to be_valid
    end

    it "without mail domain" do
      @user.email = "ex3@.ru"
      expect(@user).not_to be_valid
    end
  end

  context "isn't pass validation with right email and" do
    before(:each) do
      @user.email = "ex@mail.com"
    end

    it "short password" do
      @user.password = "12345"
      expect(@user).not_to be_valid
    end

    it "too long password" do
      @user.password = "1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890"
      expect(@user).not_to be_valid
    end
  end 
end