require 'rails_helper'

RSpec.describe "subelements/new", :type => :view do
  before(:each) do
    assign(:subelement, Subelement.new(
      :number => "MyString",
      :description => "MyString",
      :slug => "MyString",
      :pool => nil
    ))
  end

  it "renders new subelement form" do
    render

    assert_select "form[action=?][method=?]", subelements_path, "post" do

      assert_select "input#subelement_number[name=?]", "subelement[number]"

      assert_select "input#subelement_description[name=?]", "subelement[description]"

      assert_select "input#subelement_slug[name=?]", "subelement[slug]"

      assert_select "input#subelement_pool_id[name=?]", "subelement[pool_id]"
    end
  end
end
