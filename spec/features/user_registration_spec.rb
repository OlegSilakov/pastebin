require "rails_helper"

describe "user registration" do
  it "allows new users to register with an email address and password" do
    user = User.create(:email    => "alindeman@example.com",
                       :password => "ilovegrapes",
                       :password_confirmation => "ilovegrapes")

    DatabaseCleaner.clean
    # user = FactoryGirl.create(:user)

    visit "/users/sign_up"

    fill_in "Email",                 :with => user.email
    fill_in "Password",              :with => user.password
    fill_in "Password confirmation", :with => user.password_confirmation

    click_button "Sign up"
    
    expect(page).to have_content("Welcome! You have signed up successfully.")
  end
end
