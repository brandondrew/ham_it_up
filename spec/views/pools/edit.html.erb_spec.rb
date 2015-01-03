require 'rails_helper'

RSpec.describe "pools/edit", :type => :view do
  before(:each) do
    @pool = assign(:pool, Pool.create!(
      :number => "MyString",
      :description => "MyString",
      :slug => "MyString",
      :source => "MyString",
      :source_trail => ""
    ))
  end

  it "renders the edit pool form" do
    render

    assert_select "form[action=?][method=?]", pool_path(@pool), "post" do

      assert_select "input#pool_number[name=?]", "pool[number]"

      assert_select "input#pool_description[name=?]", "pool[description]"

      assert_select "input#pool_slug[name=?]", "pool[slug]"

      assert_select "input#pool_source[name=?]", "pool[source]"

      assert_select "input#pool_source_trail[name=?]", "pool[source_trail]"
    end
  end
end
