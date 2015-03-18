require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:email) }
  it { should_not allow_value(
      '', nil, 'robert.baratheon', 'robert.baratheon@usurpers', '@usurpers.org'
    ).for(:email) }

  it { should validate_presence_of(:password) }
  it { should_not allow_value('', nil).for(:password) }

  it { should have_one(:profile).dependent(:destroy) }

  it { should have_many(:user_roles) }
  it { should have_many(:roles).through(:user_roles) }
end
