require 'open-uri'

class DashboardController < ApplicationController
  
  def index
    @people_count = Person.count
    @messages = Message.limit(5).order('id desc')
  end
  
end
