require 'rails_helper'

RSpec.describe "pools/show", :type => :view do
  before(:each) do
    @pool = assign(:pool, Pool.create!(
      :number => "Number",
      :description => "Description",
      :slug => "Slug",
      :source => "Source",
      :source_trail => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Number/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(/Source/)
    expect(rendered).to match(//)
  end
end
