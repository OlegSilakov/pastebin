require "rails_helper"

feature "user sign in" do
  background { @user = FactoryGirl.create(:user)}

  scenario "User sign in after have registered" do
    visit "/users/sign_in"

    fill_in "Email", with: @user.email
    fill_in "Password", with: @user.password

    click_button "Sign in"

    expect(page).to have_content("Signed in successfully.")
  end
end
