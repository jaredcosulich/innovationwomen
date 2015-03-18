class User < ActiveRecord::Base
  authenticates_with_sorcery!

  VALID_EMAIL = /.+@.+\..+/i

  has_one                           :profile, dependent: :destroy
  has_many                          :user_roles
  has_many                          :roles, through: :user_roles

  validates_format_of :email,       with: VALID_EMAIL
  validates :email,                 presence: true, null: false, uniqueness: true
  validates :password,              presence: true, null: false,
                                    confirmation: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true, null: false
end
