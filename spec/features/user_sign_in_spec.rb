require "rails_helper"

describe "user sign in" do
  it "allows users to sign in after they have registered" do
    user = FactoryGirl.create(:user)

    visit "/users/sign_in"

    fill_in "Email",    :with => user.email
    fill_in "Password", :with => user.password

    click_button "Sign in"

    expect(page).to have_content("Signed in successfully.")
  end
end
