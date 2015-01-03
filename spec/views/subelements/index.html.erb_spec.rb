require 'rails_helper'

RSpec.describe "subelements/index", :type => :view do
  before(:each) do
    assign(:subelements, [
      Subelement.create!(
        :number => "Number",
        :description => "Description",
        :slug => "Slug",
        :pool => nil
      ),
      Subelement.create!(
        :number => "Number",
        :description => "Description",
        :slug => "Slug",
        :pool => nil
      )
    ])
  end

  it "renders a list of subelements" do
    render
    assert_select "tr>td", :text => "Number".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
