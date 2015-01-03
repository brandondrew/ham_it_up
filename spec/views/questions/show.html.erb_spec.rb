require 'rails_helper'

RSpec.describe "questions/show", :type => :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      :number => "Number",
      :text => "Text",
      :answer => "Answer",
      :options => "Options",
      :pool => nil,
      :group => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Number/)
    expect(rendered).to match(/Text/)
    expect(rendered).to match(/Answer/)
    expect(rendered).to match(/Options/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
