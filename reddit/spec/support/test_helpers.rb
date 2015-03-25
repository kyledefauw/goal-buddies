# def sign_up
#   visit sign_up_path
#
#   fill_in :user_first_name, with: 'Fred'
#   fill_in :user_last_name, with: 'Flintstone'
#   fill_in :user_email, with: "fred@flintstone.com"
#   fill_in :user_password, with: "bambam"
#   fill_in :user_password_confirmation, with: "bambam"
#
#   click_on 'Sign Up'
#
# end

def sign_in(user = create_user)

  visit sign_in_path

  within "form" do
    fill_in :email, with: user.email
    fill_in :password, with: user.password
    click_on "Sign In"
  end

end
