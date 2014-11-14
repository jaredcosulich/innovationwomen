require "rails_helper"

RSpec.describe PersonMessagesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/person_messages").to route_to("person_messages#index")
    end

    it "routes to #new" do
      expect(:get => "/person_messages/new").to route_to("person_messages#new")
    end

    it "routes to #show" do
      expect(:get => "/person_messages/1").to route_to("person_messages#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/person_messages/1/edit").to route_to("person_messages#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/person_messages").to route_to("person_messages#create")
    end

    it "routes to #update" do
      expect(:put => "/person_messages/1").to route_to("person_messages#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/person_messages/1").to route_to("person_messages#destroy", :id => "1")
    end

  end
end
