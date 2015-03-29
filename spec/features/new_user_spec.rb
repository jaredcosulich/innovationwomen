require 'rails_helper'

describe 'Signup' do
  before :each do
    visit root_path

    expect(page).to have_content 'Find A Speaker'
    click_on 'Become A Speaker'

    expect(page).to have_content 'Sign Up'
    fill_in 'first_name', with: 'Arya'
    fill_in 'last_name', with: 'Stark'
    fill_in 'user_email', with: 'arya.stark@faceless.edu'
    fill_in 'user_password', with: '123456'
    fill_in 'user_password_confirmation', with: '123456'
  end
end
