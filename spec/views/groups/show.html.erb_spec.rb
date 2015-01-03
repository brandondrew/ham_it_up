require 'rails_helper'

RSpec.describe "groups/show", :type => :view do
  before(:each) do
    @group = assign(:group, Group.create!(
      :number => "Number",
      :description => "Description",
      :subelement => nil,
      :slug => "Slug"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Number/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Slug/)
  end
end
