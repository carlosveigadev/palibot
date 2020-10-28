require 'rails_helper'

RSpec.describe 'Session Authentication', type: :feature do
  before :each do
  User.create(username: 'bender', password: '123456', email: 'bender@futurama.com') 
  Category.create(id: 1, name: 'test', priority: 1) 
  user.articles.new(id: 1,
                    title: 'Title',
                    content: 'Anything',
                    created_at: DateTime.now,
                    updated_at: DateTime.now,
                    image: File.new(Rails.root.join('public', 'test_image.png')),
                    user_id: 1,
                    category_id: 1) 

    scenario 'Log in' do
      visit new_user_session_path
      fill_in 'Login', with: 'fry'
      fill_in 'Password', with: '123456'
      click_button 'Log In'
      expect(page).to have_content('Signed in successfully.')
    end

    scenario 'Log out' do
      visit new_user_session_path
      fill_in 'Login', with: 'fry'
      fill_in 'Password', with: '123456'
      click_button 'Log In'
      click_link 'Sign Out'
      expect(page).to have_content('Sign Up')
    end
  end
end
