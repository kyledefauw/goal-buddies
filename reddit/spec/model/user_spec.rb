require 'rails_helper'

describe User do
  let(:user) { create_user }
  let(:post) { create_post(user_id: user.id) }
  let(:comment) { create_comment(user_id: user.id, post_id: post.id) }

  describe 'associations' do
    it 'returns all associated comments' do
      expect(user.comments).to eq(Array(comment))
    end

    it 'returns all associated posts' do
      expect(user.posts).to eq(Array(post))
    end
  end
end
