require 'rails_helper'

RSpec.describe "person_messages/index", :type => :view do
  before(:each) do
    assign(:person_messages, [
      PersonMessage.create!(
        :person_id => 1,
        :message_id => 2
      ),
      PersonMessage.create!(
        :person_id => 1,
        :message_id => 2
      )
    ])
  end

  it "renders a list of person_messages" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
