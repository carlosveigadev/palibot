require 'rails_helper'

RSpec.describe 'Sign up', type: :feature do
  let(:user) { User.create(username: 'bender', password: '123456', email: 'bender@futurama.com') }
  
  scenario 'Sign up' do
    visit new_user_registration_path 

    fill_in 'user[username]', with: 'bender'
    fill_in 'user[email]', with: 'bender@futurama.com'
    fill_in 'user[password]', with: '123456'
    fill_in 'user[password_confirmation]', with: '123456'

    click_button 'Sign Up'
    
    expect(page).to have_current_path(root_path)
    expect(page).to have_content('Welcome! You have signed up successfully.')
  end

  scenario 'User Already Exists' do
    visit new_user_registration_path 

    fill_in 'user[username]', with: user.username
    fill_in 'user[email]', with: 'test@test.com'
    fill_in 'user[password]', with: '123456'
    fill_in 'user[password_confirmation]', with: '123456'

    click_button 'Sign Up'
  
    expect(page).to have_content('Username has already been taken')
  end

  scenario 'Email Already Exists' do
    visit new_user_registration_path 

    fill_in 'user[username]', with: 'test'
    fill_in 'user[email]', with: user.email
    fill_in 'user[password]', with: '123456'
    fill_in 'user[password_confirmation]', with: '123456'

    click_button 'Sign Up'
  
    expect(page).to have_content('Email has already been taken')
  end

  scenario 'Pasword confirmation does not match' do
    visit new_user_registration_path 

    fill_in 'user[username]', with: 'test'
    fill_in 'user[email]', with:'test@test.com'
    fill_in 'user[password]', with: '123456'
    fill_in 'user[password_confirmation]', with: '12345'

    click_button 'Sign Up'
  
    expect(page).to have_content("Password confirmation doesn't match Password")
  end

  scenario "Username can't be blank" do
    visit new_user_registration_path

    fill_in 'user[username]', with: ''
    fill_in 'user[email]', with: 'test@test.com'
    fill_in 'user[password]', with: '123456'
    fill_in 'user[password_confirmation]', with: '123456'

    click_button 'Sign Up'

    expect(page).to have_content("Username can't be blank")
  end

end
