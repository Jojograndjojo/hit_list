def sign_up(username, password, password_confirmation)
  visit '/users/sign_up'
  fill_in 'Email', with: username
  fill_in 'Password', with: password
  fill_in 'Password confirmation', with: password_confirmation
  click_button 'Sign up'
end
