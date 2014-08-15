require 'rails_helper'

describe "User" do
  before(:each) do
    @user = User.new
  end
  
  context "is pass validation with right length of password and " do
	  before(:each) do
      @user.password = "123456789"
    end
    
    before { @user.email = "ex2@mail.com" }
    it "com domain" do
      expect(@user).to be_valid
    end

    before { @user.email = "ex2@funbox.ru" }
    it "custom domain" do
      expect(@user).to be_valid
    end    
  end

  context "is pass validation with right email and" do
    before(:each) do
      @user.email = "example@mail.com"
    end

    before { @user.password = "q1w2e3r4t5y6u7i8o9" }
    it "number and alphabet password" do
      expect(@user).to be_valid
    end

    before { @user.password = "q1w2e3r4t5!$@&" }
    it "combine password" do
      expect(@user).to be_valid
    end
  end

  context "isn't pass validation with right password and" do
    before(:each) do
      @user.password = "123456789"
    end

    before { @user.email = "ex3mail.com" }
    it "without @ symbol in email" do
      expect(@user).not_to be_valid
    end

    before { @user.email = "ex3@mail" }
    it "without dot and domain" do
      expect(@user).not_to be_valid
    end

    before { @user.email = "ex3@.ru" }
    it "without mail domain" do
      expect(@user).not_to be_valid
    end
  end

  context "isn't pass validation with right email and" do
    before(:each) do
      @user.email = "ex@mail.com"
    end

    before { @user.password = "12345" }
    it "short password" do
      expect(@user).not_to be_valid
    end

    before { @user.password = "1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890" }
    it "too long password" do
      expect(@user).not_to be_valid
    end
  end 
end