require 'rails_helper'

RSpec.describe "groups/new", :type => :view do
  before(:each) do
    assign(:group, Group.new(
      :number => "MyString",
      :description => "MyString",
      :subelement => nil,
      :slug => "MyString"
    ))
  end

  it "renders new group form" do
    render

    assert_select "form[action=?][method=?]", groups_path, "post" do

      assert_select "input#group_number[name=?]", "group[number]"

      assert_select "input#group_description[name=?]", "group[description]"

      assert_select "input#group_subelement_id[name=?]", "group[subelement_id]"

      assert_select "input#group_slug[name=?]", "group[slug]"
    end
  end
end
