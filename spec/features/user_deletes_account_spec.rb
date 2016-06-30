require 'rails_helper'

feature 'user deletes account', %Q{
  As an authenticated user
  I want to delete my account
  So that my information is no longer available in the app
} do


  # Acceptance Criteria:
  # - I must be logged in
  # - There is a link to 'my profile'
  # - There is a link to "Deactivate account"
  # - My profile is deactivated once i cancel my account

  scenario 'user deletes account' do
    user = FactoryGirl.create(:user)
    sign_in(user)

    click_link "Profile"
    click_button "Deactivate account"

    expect(page).to have_content "Sign up"
    expect(page).to have_content "Log in"
  end

end
