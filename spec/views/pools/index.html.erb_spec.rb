require 'rails_helper'

RSpec.describe "pools/index", :type => :view do
  before(:each) do
    assign(:pools, [
      Pool.create!(
        :number => "Number",
        :description => "Description",
        :slug => "Slug",
        :source => "Source",
        :source_trail => ""
      ),
      Pool.create!(
        :number => "Number",
        :description => "Description",
        :slug => "Slug",
        :source => "Source",
        :source_trail => ""
      )
    ])
  end

  it "renders a list of pools" do
    render
    assert_select "tr>td", :text => "Number".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => "Source".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
