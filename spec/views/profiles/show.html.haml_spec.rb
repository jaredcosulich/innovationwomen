require 'rails_helper'

RSpec.describe "profiles/show", :type => :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :name => "Name",
      :location => "Location",
      :title => "Title",
      :industry => "Industry",
      :description => "MyText",
      :twitter => "Twitter",
      :linkedin => "Linkedin",
      :website => "Website"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Industry/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Twitter/)
    expect(rendered).to match(/Linkedin/)
    expect(rendered).to match(/Website/)
  end
end
