require 'rails_helper'

RSpec.describe "brands/index", type: :view do
  before(:each) do
    assign(:brands, [
      Brand.create!(
        :name => "Name",
        :slug => "Slug"
      ),
      Brand.create!(
        :name => "Name",
        :slug => "Slug"
      )
    ])
  end

  it "renders a list of brands" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
  end
end
