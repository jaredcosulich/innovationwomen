# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

Profile.create(
  name: 'Rochelle Nemrow',
  location: 'Boston, MA',
  picture: File.new("#{Rails.root}/app/assets/images/initial_profiles/rochellehs.jpg"),
  description: "Founder of online program registration and marketing platform, FamilyID, Rochelle is  responsible for strategic direction and growth. In 2010, frustrated by the lack of available online signups for her own children, and seeing the opportunity for marketing family activities, she started FamilyID.",
  title: 'Founder & CEO',
  industry: 'Technology',
  company: 'FamilyID, Inc.',
  website: 'http://www.familyid.com',
  twitter: 'https://twitter.com/rochellenemrow',
  linkedin: 'https://www.linkedin.com/pub/rochelle-nemrow/5/35a/426',
  video: 'https://www.youtube.com/watch?v=yVz8CTcSoG8',
  company_description: """
FamilyID is a Massachusetts-based Internet technology company dedicated to connecting people with programs and activities through a centralized online marketplace. FamilyID believes that finding, sharing, and signing up for programs should be convenient, secure and easy for both program providers and their customers. FamilyID was created with program providers in mind and families at heart.

Rochelle was previously the co-founder and headed up marketing and product strategy for Press Access, one of the first online media database companies.  She sold the company to LexisNexis in 2000 and worked within the company, heading up the PR Information Systems group, before leaving for the consulting world. 

Previously Rochelle was a vice president and the Concord Corporation, and worked in marketing for MediaMap and High Technology Business Magazine.  She has a bachelor's degree from Boston University and attended the University of London.
""",
  super_hero_origin_story: "It was August 2010 and Rochelle had just finished filling out (once again) the same information (child's name, family insurance information, emergency contact, etc.) for school.  Then she turned her attention to the soccer signups, and the art school.  All the same information. \"There has to be an easier way.\"  And FamilyID was born.",
  passion: "Bringing online signups to schools and activities across the country.  There has to be an easier, more secure way to get a family's private information to the school or organization than a 6 year old's backpack."
)