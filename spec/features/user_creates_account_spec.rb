require 'rails_helper'

feature 'User creates account', %Q{
  As a prospective user
  I want to create an account
  So that I can search for and save recipes
} do

  # - There is a link to "sign up"
  # - The sign up page has a form for:
  #   - First Name
  #   - Last Name
  #   - Email
  #   - Password
  #   - Password Confirmation
  # - The form requires me to provide all information
  # - I am logged in once I sign up

  scenario "user provides valid information" do
    user = FactoryGirl.create(:user)
    email = generate :email

    visit root_path


    click_link("Sign up")
    fill_in "First name", with: user.first_name
    fill_in "Last name", with: user.last_name
    fill_in "Email", with: email
    fill_in "Password", with: user.password
    fill_in "Password confirmation", with: user.password
    click_button "Sign up"

    expect(page).to have_content "Sign out"
  end

  scenario "user provides invalid information" do
    visit new_user_registration_path
    click_button "Sign up"

    expect(page).to have_content "can't be blank"
    expect(page).to_not have_content "Sign Out"
  end
end
