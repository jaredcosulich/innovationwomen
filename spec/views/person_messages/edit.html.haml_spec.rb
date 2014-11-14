require 'rails_helper'

RSpec.describe "person_messages/edit", :type => :view do
  before(:each) do
    @person_message = assign(:person_message, PersonMessage.create!(
      :person_id => 1,
      :message_id => 1
    ))
  end

  it "renders the edit person_message form" do
    render

    assert_select "form[action=?][method=?]", person_message_path(@person_message), "post" do

      assert_select "input#person_message_person_id[name=?]", "person_message[person_id]"

      assert_select "input#person_message_message_id[name=?]", "person_message[message_id]"
    end
  end
end
