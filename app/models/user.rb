class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_one :profile, dependent: :destroy

  validates :email,                 presence: true, null: false, uniqueness: true
  validates :password,              presence: true, null: false,
                                    confirmation: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true, null: false
end
