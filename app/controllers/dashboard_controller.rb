require 'open-uri'

class DashboardController < ApplicationController
  
  def index
    @people_count = Person.count
  end
  
end
