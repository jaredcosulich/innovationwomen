class Role < ActiveRecord::Base
  has_many :user_roles
  has_many :users, through: :user_roles

  TYPES = %w(admin event_manager speaker)

  validates :name, inclusion: { in: TYPES }
end
