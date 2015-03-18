require 'rails_helper'

RSpec.describe Profile, type: :model do
  it { should belong_to(:user) }
  it { should have_many(:topics) }

  it { should validate_presence_of(:name) }
  it { should_not allow_value('', nil).for(:name) }

  it { should accept_nested_attributes_for(:user) }
end
