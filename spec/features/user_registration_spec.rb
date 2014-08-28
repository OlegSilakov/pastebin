require "rails_helper"

feature "user registration" do
  scenario "New user register with an email address and password" do
    visit "/users/sign_up"

    fill_in "Email", with: "alindeman@example.com"
    fill_in "Password", with: "ilovegrapes"
    fill_in "Password confirmation", with: "ilovegrapes"

    click_button "Sign up"

    expect(page).to have_content("Welcome! You have signed up successfully.")
  end
end
