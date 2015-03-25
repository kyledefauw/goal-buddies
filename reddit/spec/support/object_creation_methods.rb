def create_user(overrides={})
  defaults = {
    first_name: "Ron",
    last_name: "Paul",
    email: "ron_paul_loves_guns@example.com",
    password: "123abc",
    password_confirmation: "123abc"
  }
  User.create(defaults.merge(overrides))
end

def create_post(overrides={})
  defaults = {
    description: "Slay Code",
    user_id: create_user.id
  }
  Post.create(defaults.merge(overrides))
end

def create_comment(overrides={})
  defaults = {
    content: "All day",
    user_id: create_user.id,
    post_id: create_post.id
  }
  Comment.create(defaults.merge(overrides))
end
