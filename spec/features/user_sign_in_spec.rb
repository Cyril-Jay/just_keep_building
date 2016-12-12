require 'rails_helper'
feature 'sign up' do
  context 'As an unauthenticated user, I want to sign up' do
    scenario 'user signs up successfully' do

      visit root_path
      click_link 'Sign Up'
      fill_in 'Email', with: 'build@gmail.com'
      fill_in 'Password', with: 'password'
      fill_in 'Password confirmation', with: 'password'
      click_button 'Sign up'

      expect(page).to have_content('Welcome back to Just Keep Building build@gmail.com')
      expect(page).to have_content('Sign Out')
    end
  end
end
