require 'rails_helper'

RSpec.describe 'Session Authentication', type: :feature do
  before :each do
    User.create(username: 'bender', email: 'bender@futurama.com', password: '123456', password_confirmation: '123456')
  end

  scenario 'Log in' do
    visit new_user_session_path
    fill_in 'Login', with: 'bender'
    fill_in 'Password', with: '123456'
    click_button 'Log In'
    expect(page).to have_content('Signed in successfully.')
  end

  scenario 'Log out' do
    visit new_user_session_path
    fill_in 'Login', with: 'bender'
    fill_in 'Password', with: '123456'
    click_button 'Log In'
    click_link 'Log Out'
    expect(page).to have_content('Sign Up')
  end
end
