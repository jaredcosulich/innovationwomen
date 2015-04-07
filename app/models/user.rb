class User < ActiveRecord::Base
  authenticates_with_sorcery!

  VALID_EMAIL = /.+@.+\..+/i

  has_one :profile, dependent: :destroy

  validates_format_of :email,       with: VALID_EMAIL
  validates :email,                 presence: true, uniqueness: true
  validates :password,              presence: true, confirmation: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  validates :first_name,            presence: true
  validates :last_name,             presence: true

  def owns?(profile)
    profile.user_id == id
  end
end
