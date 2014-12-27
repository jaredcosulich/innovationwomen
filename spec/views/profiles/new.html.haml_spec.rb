require 'rails_helper'

RSpec.describe "profiles/new", :type => :view do
  before(:each) do
    assign(:profile, Profile.new(
      :name => "MyString",
      :location => "MyString",
      :title => "MyString",
      :industry => "MyString",
      :description => "MyText",
      :twitter => "MyString",
      :linkedin => "MyString",
      :website => "MyString"
    ))
  end

  it "renders new profile form" do
    render

    assert_select "form[action=?][method=?]", profiles_path, "post" do

      assert_select "input#profile_name[name=?]", "profile[name]"

      assert_select "input#profile_location[name=?]", "profile[location]"

      assert_select "input#profile_title[name=?]", "profile[title]"

      assert_select "input#profile_industry[name=?]", "profile[industry]"

      assert_select "textarea#profile_description[name=?]", "profile[description]"

      assert_select "input#profile_twitter[name=?]", "profile[twitter]"

      assert_select "input#profile_linkedin[name=?]", "profile[linkedin]"

      assert_select "input#profile_website[name=?]", "profile[website]"
    end
  end
end
