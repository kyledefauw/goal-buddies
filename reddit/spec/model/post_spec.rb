require 'rails_helper'

describe Post do
  let(:user) { create_user }
  let(:post) { create_post(user_id: user.id)}
  let(:comment) { create_comment(user_id: user.id, post_id: post.id)}

  describe 'associations' do
    it 'returns associated user' do
      expect(post.user).to eq(user)
    ends

    it 'returns all associated comments' do
      expect(post.comments).to eq(Array(comment))
    end
  end
end
