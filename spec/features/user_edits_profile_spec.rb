require 'rails_helper'

feature 'User edits profile', %Q{
  As an authenticated user
  I want to update my information
  So that I can keep my information current
} do

  # Acceptance Criteria:
  # - I must be logged in & current user
  # - There is a link to 'My Profile'
  # - The profile page has a form for:
  #   - First Name
  #   - Last Name
  #   - Email
  # - The form requires user to provide all required information
  # - My profile is updated once I click 'update profile'

  scenario 'user provides valid information' do
    user = FactoryGirl.create(:user)
    sign_in(user)
    click_link "Profile"

    fill_in "First name", with: user.first_name
    fill_in "Last name", with: "Smith"
    fill_in "Email", with: "test@email.com"
    fill_in "Current password", with: user.password
    click_button "Update"

    expect(page).to have_content "Your account has been updated successfully"
  end

  scenario 'user provides invalid information' do
    user = FactoryGirl.create(:user)
    sign_in(user)
    click_link "Profile"

    click_button "Update"

    expect(page).to have_content "can't be blank"
  end

end
