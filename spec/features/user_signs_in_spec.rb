require 'rails_helper'

feature 'User signs in', %Q{
  As an authenticated user
  I was to sign in
  So that I can search for and save recipes
} do

  # Acceptance Criteria:
  # - There is a link to "log in"
  # - The log in page has a form for:
  #   - Email
  #   - Password
  # - The form requires me to provide all information
  # - I am logged in once I click "log in"

  scenario "user provides valid information to log in" do
    user = FactoryGirl.create(:user)
    sign_in(user)

    expect(page).to have_content "Sign out"
  end

  scenario "user provides invalid information" do
    user = FactoryGirl.create(:user)

    visit new_user_session_path

    click_button "Log in"

    expect(page).to have_content "Invalid email or password"
  end

end
