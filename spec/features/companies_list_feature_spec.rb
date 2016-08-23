require 'rails_helper'

feature 'Companies' do
  scenario 'A list of companies \' name is displayed' do
    company = create(:company)
    visit '/'
    expect(page).to have_content 'Adissa'
  end
end
