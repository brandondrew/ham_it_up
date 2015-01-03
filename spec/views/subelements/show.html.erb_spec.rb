require 'rails_helper'

RSpec.describe "subelements/show", :type => :view do
  before(:each) do
    @subelement = assign(:subelement, Subelement.create!(
      :number => "Number",
      :description => "Description",
      :slug => "Slug",
      :pool => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Number/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(//)
  end
end
