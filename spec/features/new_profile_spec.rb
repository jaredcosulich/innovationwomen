require 'rails_helper'

describe 'new profile' do
  before :each do
    visit root_path
    expect(page).to have_content 'Find A Speaker'
    click_on 'Become A Speaker'
    expect(page).to have_content 'Create A New Profile'
    fill_in 'profile_name', with: 'Julia Stiles'
    fill_in 'profile_location', with: 'Boston'
    fill_in 'profile_title', with: 'Actor'
    select 'Arts and Crafts', from: 'profile_industry'
    fill_in 'profile_company', with: 'Sony'
    fill_in 'profile_twitter', with: 'https://twitter.com/missjuliastiles'
    fill_in 'profile_linkedin', with: 'http://linkedin.com/in/juliastiles'
    fill_in 'profile_website', with: 'http://juliastiles.com'
    fill_in 'profile_blog_url', with: 'http://juliastiles.wordpress.com'
    fill_in 'profile_summary', with: 'Star of many movies'
    fill_in 'profile_video', with: 'https://www.youtube.com/watch?v=AsY1QgcCT-s'
    fill_in 'profile_origin_story', with: 'Bacon ipsum dolor amet pork loin leberkas shank tri-tip, filet mignon picanha boudin meatloaf shankle.'
    fill_in 'profile_passion', with: 'Doing acting and stuff'
    attach_file 'profile_picture', 'spec/fixtures/cat1.jpg'
    click_on 'Submit Profile'
  end

  it 'displays new user information' do
    expect(page).to have_xpath('//img[contains(@src, "cat1.jpg")]')
    expect(page).to have_content('Edit Your Profile')
    # expect(page).to have_content('Hi Julia Stiles')
    expect(page).to have_content('Arts and Crafts')
  end

  it 'allows you to create topics' do
    click_on 'Add a speaking topic'

    expect(page).to have_xpath('//input[contains(@value, "1")]')
    fill_in 'topic_title', with: 'A Topic'
    fill_in 'topic_description', with: 'A Description'
    click_on 'Save Speaking Topic'

    expect(page).to have_content('A Topic')
  end
end
