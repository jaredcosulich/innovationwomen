class WelcomeController < ApplicationController
  
  def index
    @featured_members = Profile.all
  end

end
