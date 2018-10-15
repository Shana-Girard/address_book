require 'rails_helper'

RSpec.describe "contacts/index", type: :view do
  before(:each) do
    assign(:contacts, [
      Contact.create!(
        :person => nil
      ),
      Contact.create!(
        :person => nil
      )
    ])
  end

  it "renders a list of contacts" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
