require 'rails_helper'

feature 'User can sign in' do
  scenario 'A \'sign in\' link and a \'sign up\' link should be on the homepage' do
    visit('/')
    expect(page).to have_link('Sign in')
    expect(page).to have_link('Sign up')
  end

  scenario 'User should not see a \'sign in\' link and a \'sign up\' link' do
    sign_up('a@mail.com','aaaaaa', 'aaaaaa')
    visit('/')
    expect(page).not_to have_link('Sign in')
    expect(page).not_to have_link('Sign up')
  end
end

feature 'User can sign out' do
  scenario 'Non user should not see \'sign out\' link' do
    visit('/')
    expect(page).not_to have_link('Sign out')
  end

  scenario 'Logged in User should see \'sign out\' link' do
    sign_up('a@mail.com','aaaaaa', 'aaaaaa')
    visit('/')
    expect(page).to have_link('Sign out')
  end
end
