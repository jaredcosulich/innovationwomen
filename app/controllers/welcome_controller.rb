class WelcomeController < ApplicationController
  
  def index
    @featured_members = Profile.all.limit(4)
  end
  
  def coming_soon
  end

end
