require 'rails_helper'

RSpec.describe "profiles/index", :type => :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :name => "Name",
        :location => "Location",
        :title => "Title",
        :industry => "Industry",
        :description => "MyText",
        :twitter => "Twitter",
        :linkedin => "Linkedin",
        :website => "Website"
      ),
      Profile.create!(
        :name => "Name",
        :location => "Location",
        :title => "Title",
        :industry => "Industry",
        :description => "MyText",
        :twitter => "Twitter",
        :linkedin => "Linkedin",
        :website => "Website"
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Industry".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Twitter".to_s, :count => 2
    assert_select "tr>td", :text => "Linkedin".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
  end
end
