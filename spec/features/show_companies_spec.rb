require 'rails_helper'

feature 'Company' do
  scenario 'each company has a descriptive page' do
    company = create(:company)
    visit '/'
    click_link "#{company.name}"
    expect(page).to have_content "Learn more about #{company.name}"
  end
end
