class Profile < ActiveRecord::Base
  belongs_to :user
  accepts_nested_attributes_for :user

  has_many :topics

  validates :title, presence: true
  validates :location, presence: true

  has_attached_file :picture, :styles => { :medium => "240x400>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/

  def youtube_url
    return unless video.try(:index, 'youtube')
    return video.split('v=')[1]
  end

  def vimeo_url
    return unless video.try(:index, 'vimeo')
    return video.split('/').last
  end

  def twitter_url
    return "https://twitter.com/#{twitter.split('@')[1]}" unless twitter.index('@').nil?
    return twitter
  end

  enum travel_distance: [
    '0-25 miles',
    '50-75 miles',
    '75-100 miles',
    '100+miles'
  ]

  enum charge: [
    'I speak for the exposure for myself and my company',
    'I always get paid for speaking',
    'I generally get paid for speaking but make exceptions',
    'I sometimes get paid for speaking',
    'I need my expenses covered - travel, hotel, meals, etc.',
    'Everything is negotiable'
  ]

  enum industry: [
    'Accounting and Finance',
    'Airlines/Aviation',
    'Alternative Dispute Resolution',
    'Alternative Medicine',
    'Animation',
    'Apparel and Fashion',
    'Architecture & Planning',
    'Arts and Crafts',
    'Automotive',
    'Aviation & Aerospace',
    'Banking',
    'Biotechnology',
    'Broadcast Media',
    'Building Materials',
    'Business Supplies and Equipment',
    'Capital Markets',
    'Chemicals',
    'Civic and Social Organization',
    'Civil Engineering',
    'Commercial Real Estate',
    'Computer & Network Security',
    'Computer Games',
    'Computer Hardware',
    'Computer Networking',
    'Computer Software',
    'Construction',
    'Consumer Electronics',
    'Consumer Goods',
    'Consumer Services',
    'Cosmetics',
    'Dairy',
    'Defense and Space',
    'Design',
    'Education Management',
    'E-Learning',
    'Electrical/Electronic Manufacturing',
    'Entertainment',
    'Environmental Services',
    'Events Services',
    'Executive Office',
    'Facilities Services',
    'Farming',
    'Financial Services and Wealth Management',
    'Fine Art',
    'Fishery',
    'Food & Beverages',
    'Food Production',
    'Fund-Raising',
    'Furniture',
    'Gambling & Casinos',
    'Glass, Ceramics & Concrete',
    'Government Administration',
    'Government Relations',
    'Graphic Design',
    'Health, Wellness and Fitness',
    'Higher Education',
    'Hospital and Health Care',
    'Hospitality',
    'Human Resources',
    'Import and Export',
    'Individual and Family Services',
    'Industrial Automation',
    'Information Services',
    'Information Technology and Services',
    'Insurance',
    'International Affairs',
    'International Trade and Development',
    'Internet',
    'Investment Banking',
    'Investment Management',
    'Judiciary',
    'Law Enforcement',
    'Law Practice',
    'Legal Services',
    'Legislative Office',
    'Leisure, Travel & Tourism',
    'Libraries',
    'Logistics and Supply Chain',
    'Luxury Goods and Jewelry',
    'Machinery',
    'Management Consulting',
    'Maritime',
    'Market Research',
    'Marketing and Advertising',
    'Mechanical or Industrial Engineering',
    'Media Production',
    'Medical Devices',
    'Medical Practice',
    'Mental Health Care',
    'Military',
    'Mining & Metals',
    'Motion Pictures and Film',
    'Museums and Institutions',
    'Music',
    'Nanotechnology',
    'Newspapers',
    'Nonprofit Organization Management',
    'Oil and Energy',
    'Online Media',
    'Outsourcing/Offshoring',
    'Package/Freight Delivery',
    'Packaging and Containers',
    'Paper and Forest Products',
    'Performing Arts',
    'Pharmaceuticals',
    'Philanthropy',
    'Photography',
    'Plastics',
    'Political Organization',
    'Primary/Secondary Education',
    'Printing',
    'Professional Training and Coaching',
    'Program Development',
    'Public Policy',
    'Public Relations and Communications',
    'Public Safety',
    'Publishing',
    'Railroad Manufacture',
    'Ranching',
    'Real Estate',
    'Recreational Facilities and Services',
    'Religious Institutions',
    'Renewables and Environment',
    'Research',
    'Restaurants',
    'Retail',
    'Security and Investigations',
    'Semiconductors',
    'Shipbuilding',
    'Sporting Goods',
    'Sports',
    'Staffing and Recruiting',
    'Supermarkets',
    'Telecommunications',
    'Textiles',
    'Think Tanks',
    'Tobacco',
    'Translation and Localization',
    'Transportation/Trucking/Railroad',
    'Utilities',
    'Venture Capital and Private Equity',
    'Veterinary',
    'Warehousing',
    'Wholesale',
    'Wine and Spirits',
    'Wireless',
    'Writing and Editing'
  ]
end
