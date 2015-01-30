require 'rails_helper'

xdescribe 'search' do
  before do
    Profile.create(name: 'Sally Smith', company: 'IBM')
  end

  it 'searches for profiles using keywords' do
    visit root_path
    fill_in 'search', with: 'sally'
    click_on 'Search'
    expect(page).to have_content 'Sally Smith'

    visit root_path
    fill_in 'search', with: 'IBM'
    click_on 'Search'
    expect(page).to have_content 'Sally Smith'
  end

  it "doesn't return inaccurate searches" do
    visit root_path
    fill_in 'search', with: 'sallx'
    click_on 'Search'
    expect(page).to_not have_content 'Sally Smith'
  end

  it "doesn't blow up on nil" do
    visit root_path
    click_on 'Search'
    expect(page).to_not have_content 'Sally Smith'
  end

end