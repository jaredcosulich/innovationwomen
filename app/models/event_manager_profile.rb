class EventManagerProfile < ActiveRecord::Base
  has_one :profile, as: :information, dependent: :destroy
end
