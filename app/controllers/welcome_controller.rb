class WelcomeController < ApplicationController
  
  def index
    @featured_members = Profile.all
  end
  
  def coming_soon
  end

end
