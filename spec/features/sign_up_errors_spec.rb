require 'rails_helper'

RSpec.describe 'Sign up', type: :feature do
  before :each do
    User.create(username: 'bender', password: '123456', email: 'bender@futurama.com')
    user.articles.new(id: 1, title: 'Title', content: 'Anything', created_at: DateTime.now, updated_at: DateTime.now,
                      image: File.new(Rails.root.join('public', 'test_image.png')), user_id: 1, category_id: 1)

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
end
