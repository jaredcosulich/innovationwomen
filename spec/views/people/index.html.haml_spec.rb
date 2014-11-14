require 'rails_helper'

RSpec.describe "people/index", :type => :view do
  before(:each) do
    assign(:people, [
      Person.create!(
        :phonenumber => "Phonenumber"
      ),
      Person.create!(
        :phonenumber => "Phonenumber"
      )
    ])
  end

  it "renders a list of people" do
    render
    assert_select "tr>td", :text => "Phonenumber".to_s, :count => 2
  end
end
