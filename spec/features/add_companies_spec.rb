require 'rails_helper'

feature 'Adding companies' do
  scenario 'companies can be added' do
    visit '/'
    click_link 'Add a new company'
    expect(page.current_url).to eq 'http://www.example.com/companies/new'
  end

  scenario 'Added company are displayed on the homepage' do
    visit '/'
    click_link 'Add a new company'
    fill_in 'Name', with: 'Makers Academy'
    fill_in 'Location', with: 'E1 6LT'
    fill_in 'Project', with: 'making makers'
    fill_in 'Interesting thing', with: 'live by TDD'
    fill_in 'Person working there', with: 'Mary Rose Cook'
    click_button 'Add Company'
    expect(page).to have_content 'Makers Academy'
  end
end
