require 'rails_helper'

feature 'interest mark' do
  scenario 'User can mark it\'s interest in a company'  do
    company = create(:company)
    sign_up('a@mail.com', 'aaaaaa', 'aaaaaa')
    visit '/'
    click_link "#{company.name}"
    click_button 'like this company'
    expect(page).to have_content('You have interest for this company')
    expect(page).not_to have_button 'like this company'
  end

  scenario 'User can unmark it\'s interest in a company' do
    company = create(:company)
    sign_up('a@mail.com', 'aaaaaa', 'aaaaaa')
    visit '/'
    click_link "#{company.name}"
    click_button 'like this company'
    expect(page).to have_button 'change your mind'
  end
end
