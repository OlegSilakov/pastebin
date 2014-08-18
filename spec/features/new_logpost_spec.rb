require "rails_helper"

feature "Logpost" do
  scenario "Register user and add new logpost" do
    user = FactoryGirl.create(:user)
    visit "/users/sign_in"
    fill_in "Email",  :with => user.email
    fill_in "Password",  :with => user.password
    click_button "Sign in"

    visit "/logposts/new"
    fill_in "Content", :with =>"[2014-03-03 15:12:39.753 MSK] INFO  [62436] [12c67387] Started GET '/api/current_user/abonents/with_location_changed?_=1393828480374' for 188.128.85.2 at 2014-03-03 15:12:39 +0400"
    click_button "Create Logpost"

    expect(page).to have_content("Logpost was successfully created.")
  end
end
