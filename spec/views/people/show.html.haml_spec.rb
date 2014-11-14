require 'rails_helper'

RSpec.describe "people/show", :type => :view do
  before(:each) do
    @person = assign(:person, Person.create!(
      :phonenumber => "Phonenumber"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Phonenumber/)
  end
end
