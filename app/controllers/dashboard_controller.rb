require 'open-uri'

class DashboardController < ApplicationController
  
  def index
    @people_count = Person.count
    @messages = Message.all
  end
  
end
