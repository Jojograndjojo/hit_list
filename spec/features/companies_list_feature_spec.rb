require 'rails_helper'

feature 'Company' do
  scenario 'A list of companies \' name is displayed' do
    company = create(:company)
    visit '/'
    expect(page).to have_content 'Adissa'
  end

  scenario 'A list of companies \' location is displayed' do
    company = create(:company)
    visit '/'
    expect(page).to have_content 'E2 9QT'
  end

  scenario 'A list of companies \' project is displayed' do
    company = create(:company)
    visit '/'
    expect(page).to have_content 'renting flats'
  end

  scenario 'A list of companies \' thing of interest is displayed' do
    company = create(:company)
    visit '/'
    expect(page).to have_content 'living on the edge'
  end

  scenario 'A list of person working at the company is displayed' do
    company = create(:company)
    visit '/'
    expect(page).to have_content 'Drunk plumber'
  end
end
