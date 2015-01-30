class Topic < ActiveRecord::Base
  belongs_to :profile
  validates :title, presence: true
  validates :description, presence: true
  
end
