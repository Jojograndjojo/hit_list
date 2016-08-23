require 'rails_helper'

feature 'Updating company\'s details' do

  scenario 'Company project can be updated' do
    company = create(:company)
    visit '/'
    click_link 'Adissa'
    click_link 'Update company\'s details'
    fill_in 'Location', with: 'E2 9QT'
    fill_in 'Project', with: 'making my life hell'
    fill_in 'Interesting thing', with: 'really small space'
    fill_in 'Person working there', with: 'sombedoy else'
    click_button 'Update'
    expect(page).to have_content 'making my life hell'
    expect(page.current_url).to eq   "http://www.example.com/companies/#{company.id}"
  end
end
