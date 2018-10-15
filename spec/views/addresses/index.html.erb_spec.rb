require 'rails_helper'

RSpec.describe "addresses/index", type: :view do
  before(:each) do
    assign(:addresses, [
      Address.create!(
        :person => nil,
        :streetname => "Streetname"
      ),
      Address.create!(
        :person => nil,
        :streetname => "Streetname"
      )
    ])
  end

  it "renders a list of addresses" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Streetname".to_s, :count => 2
  end
end
