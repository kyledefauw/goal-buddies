require 'rails_helper'

feature 'User management' do
 before :each do
   sign_in
 end

 scenario 'allows a new user to register' do
   expect(current_path).to eq '/'
   expect(page).to have_content 'Welcome to the Reddit Copy Site'
   expect(page).to have_content 'List of Posts'
   expect(page).to have_content 'You have successfully signed in!'
 end

 scenario 'allows a user to log out' do
   click_link 'Sign Out'

   expect(current_path).to eq(root_path)
   expect(page).to have_content 'Successfully signed out'

   visit root_path
   expect(page).to_not have_content 'Successfully signed out'
 end
end
