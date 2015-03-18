require 'rails_helper'

RSpec.describe Role, type: :model do
  it { should have_many(:user_roles) }
  it { should have_many(:users).through(:user_roles) }
  it { should ensure_inclusion_of(:name).in_array(%w[admin event_manager speaker]) }
end
