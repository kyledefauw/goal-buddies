require 'rails_helper'

feature 'Comment management' do
  before do
    sign_in
    create_comment
    visit post_comments_path(create_comment.post)
  end

  scenario 'User can create, read, update, and destroy a comment' do
    expect(page).to have_content 'List of Comments'
    expect(page).to have_content (create_comment.content)
    expect(page).to have_content 'New Comment'
  end

  scenario 'User can create a comment' do
    expect(page).to have_content 'Comments'

    within 'form' do
      fill_in 'Content', with: "All day"
      click_on 'Create Comment'
    end

    expect(page).to have_content 'All day'
  end

  xscenario 'User can update a comment' do

  end

  xscenario 'User can delete a comment' do

  end

end
