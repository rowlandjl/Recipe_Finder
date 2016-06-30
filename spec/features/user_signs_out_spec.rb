require 'rails_helper'

feature 'user signs out', %Q{
  As an authenticated user
  I want to sign out of my session
} do

  # Acceptance Criteria:
  # - I must be logged in
  # - There is a link to "log out"
  # - I am signed out once I click "log out"

  scenario 'user signs out of session' do
    user = FactoryGirl.create(:user)
    sign_in(user)

    click_link "Sign out"

    expect(page).to have_content "Sign up"
  end

end
