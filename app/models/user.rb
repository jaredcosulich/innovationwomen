class User < ActiveRecord::Base
  authenticates_with_sorcery!
  
  has_one :profile
  
  validates :email, presence: true
  validates :password, presence: true
  
  
  
end
