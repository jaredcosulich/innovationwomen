require 'rails_helper'

RSpec.describe "person_messages/new", :type => :view do
  before(:each) do
    assign(:person_message, PersonMessage.new(
      :person_id => 1,
      :message_id => 1
    ))
  end

  it "renders new person_message form" do
    render

    assert_select "form[action=?][method=?]", person_messages_path, "post" do

      assert_select "input#person_message_person_id[name=?]", "person_message[person_id]"

      assert_select "input#person_message_message_id[name=?]", "person_message[message_id]"
    end
  end
end
