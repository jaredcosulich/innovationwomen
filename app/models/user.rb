class User < ActiveRecord::Base
  rolify
  authenticates_with_sorcery!

  VALID_EMAIL = /.+@.+\..+/i

  has_one :profile, dependent: :destroy

  validates_format_of :email,       with: VALID_EMAIL
  validates :email,                 presence: true, null: false, uniqueness: true
  validates :password,              presence: true, null: false,
    confirmation: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true, null: false

  def owns?(profile)
    profile.user_id == id
  end
end
