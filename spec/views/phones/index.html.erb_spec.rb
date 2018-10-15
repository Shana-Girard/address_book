require 'rails_helper'

RSpec.describe "phones/index", type: :view do
  before(:each) do
    assign(:phones, [
      Phone.create!(
        :person => nil
      ),
      Phone.create!(
        :person => nil
      )
    ])
  end

  it "renders a list of phones" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
