require 'rails_helper'

RSpec.describe "influencers/show", type: :view do
  before(:each) do
    @influencer = assign(:influencer, Influencer.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :email => "Email",
      :phone => "Phone"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone/)
  end
end
