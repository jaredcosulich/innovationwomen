class WelcomeController < ApplicationController
  
  def index
    @featured_members = Profile.all * 8
  end

end
