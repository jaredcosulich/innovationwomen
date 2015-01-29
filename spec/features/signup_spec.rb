require 'rails_helper'

describe 'Signup' do
  it 'collects new user information' do
    visit root_path
    expect(page).to have_content 'Find A Speaker'
    click_on 'Become A Speaker'
    expect(page).to have_content 'Create A New Profile'
    fill_in 'profile_name', with: 'Julia Stiles'
    fill_in 'user_email', with: 'julia@example.com'
    fill_in 'profile_location', with: 'Boston'
    fill_in 'profile_title', with: 'Actor'
    fill_in 'profile_industry', with: 'The Arts'
    fill_in 'profile_company', with: 'Sony'
    fill_in 'profile_twitter', with: 'https://twitter.com/missjuliastiles'
    fill_in 'profile_linkedin', with: 'http://linkedin.com/in/juliastiles'
    fill_in 'profile_website', with: 'http://juliastiles.com'
    fill_in 'profile_description', with: 'Star of many movies'
    fill_in 'profile_video', with: 'https://www.youtube.com/watch?v=AsY1QgcCT-s'
    fill_in 'profile_company_description', with: 'Makes movies and stuff'
    fill_in 'profile_super_hero_origin_story', with: 'Bacon ipsum dolor amet pork loin leberkas shank tri-tip, filet mignon picanha boudin meatloaf shankle.'
    fill_in 'profile_passion', with: 'Doing acting and stuff'
    attach_file 'profile_picture', 'spec/fixtures/cat1.jpg'
    click_on 'Submit Profile'

    expect(page).to have_xpath('//img[contains(@src, "cat1.jpg")]')
  end
end