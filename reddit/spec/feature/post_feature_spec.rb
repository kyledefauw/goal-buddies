require 'rails_helper'

feature 'Post management' do
 before do
  create_post
  sign_in
 end

  scenario 'User can create, read, update, and destroy a post' do

    expect(page).to have_content 'List of Posts'
    expect(page).to have_content (create_post.description)
    expect(page).to have_content 'New Post'
  end

  scenario 'User can create a post' do
    visit new_user_post_path(create_user)
    expect(page).to have_content 'Create New Post'

    within 'form' do
      fill_in 'Description', with: "Slay code 24/7"
      click_on 'Create Post'
    end

    expect(page).to have_content 'Slay code 24/7'
  end

  scenario 'User can update a post' do
    click_on (create_post.description)
    click_on('Edit Post')
    expect(page).to have_content 'Edit Post'

    within 'form' do
      fill_in 'Description', with: "Slay code 24/7, all day"
      click_on 'Update Post'
    end

    expect(page).to have_content 'Slay code 24/7, all day'
  end

  scenario 'User can delete a post' do
    click_on (create_post.description)

    click_on "Delete"
    expect(page).to have_content('Post was deleted')
    expect(current_path).to eq '/'
  end

end
