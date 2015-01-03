require 'rails_helper'

RSpec.describe "groups/index", :type => :view do
  before(:each) do
    assign(:groups, [
      Group.create!(
        :number => "Number",
        :description => "Description",
        :subelement => nil,
        :slug => "Slug"
      ),
      Group.create!(
        :number => "Number",
        :description => "Description",
        :subelement => nil,
        :slug => "Slug"
      )
    ])
  end

  it "renders a list of groups" do
    render
    assert_select "tr>td", :text => "Number".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
  end
end
