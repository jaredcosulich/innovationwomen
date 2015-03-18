class Profile < ActiveRecord::Base
  has_many                       :topics
  belongs_to                     :information, polymorphic: true
  belongs_to                     :user
  accepts_nested_attributes_for  :user

  validates                      :name, presence: true
  validates_associated           :information
end
