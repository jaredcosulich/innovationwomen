require 'rails_helper'

RSpec.describe "person_messages/show", :type => :view do
  before(:each) do
    @person_message = assign(:person_message, PersonMessage.create!(
      :person_id => 1,
      :message_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
