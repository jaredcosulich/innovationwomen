require 'rails_helper'

describe User do
  it { should validate_presence_of(:email) }
  it { should_not allow_value('', nil).for(:email) }

  it { should validate_presence_of(:password) }
  it { should_not allow_value('', nil).for(:password) }

  it { should have_one(:profile) }

  # describe '#owns?(profile)' do
  #   it 'allows admin access to user data' do
  #     user = User.create(admin: false)
  #     admin = User.create(admin: true)
  #   end
  # end
end
