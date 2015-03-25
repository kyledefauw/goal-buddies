require 'rails_helper'

describe Comment do
  let(:user) { create_user }
  let(:post) { create_post(user_id: user.id)}
  let(:comment) { create_comment(user_id: user.id, post_id: post.id)}

  describe 'assocations' do
    it 'returns associated user' do
      expect(comment.user).to eq(user)
    end

    it "returns associated post" do
      expect(comment.post).to eq(post)
    end
  end
end
