class Profile < ActiveRecord::Base
  belongs_to :user
  accepts_nested_attributes_for :user

  has_many :topics

  validates :name, presence: true
  
  has_attached_file :picture, :styles => { :medium => "240x400>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/

  def youtube_url
    return unless video.try(:index, 'youtube')
    return video.split('v=')[1]
  end

end
