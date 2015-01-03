require 'rails_helper'

RSpec.describe "pools/new", :type => :view do
  before(:each) do
    assign(:pool, Pool.new(
      :number => "MyString",
      :description => "MyString",
      :slug => "MyString",
      :source => "MyString",
      :source_trail => ""
    ))
  end

  it "renders new pool form" do
    render

    assert_select "form[action=?][method=?]", pools_path, "post" do

      assert_select "input#pool_number[name=?]", "pool[number]"

      assert_select "input#pool_description[name=?]", "pool[description]"

      assert_select "input#pool_slug[name=?]", "pool[slug]"

      assert_select "input#pool_source[name=?]", "pool[source]"

      assert_select "input#pool_source_trail[name=?]", "pool[source_trail]"
    end
  end
end
