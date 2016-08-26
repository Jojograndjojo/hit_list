require 'rails_helper'

feature 'Adding companies' do
  scenario 'User can Add a new company' do
    sign_up('a@mail.com', 'aaaaaa', 'aaaaaa')
    visit '/'
    click_link 'Add a new company'
    fill_in 'Name', with: 'Makers Academy'
    fill_in 'Location', with: 'E1 6LT'
    fill_in 'Project', with: 'making makers'
    fill_in 'Interesting thing', with: 'live by TDD'
    fill_in 'Person working there', with: 'Mary Rose Cook'
    fill_in 'Technology', with: 'Ruby'
    click_button 'Add Company'
    expect(page).to have_content 'Makers Academy'
  end

end
