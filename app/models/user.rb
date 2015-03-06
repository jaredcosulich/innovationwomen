class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_one :profile

  validates :email, presence: true, null: false
  validates :password, presence: true, null: false
end
