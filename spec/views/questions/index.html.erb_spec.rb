require 'rails_helper'

RSpec.describe "questions/index", :type => :view do
  before(:each) do
    assign(:questions, [
      Question.create!(
        :number => "Number",
        :text => "Text",
        :answer => "Answer",
        :options => "Options",
        :pool => nil,
        :group => nil
      ),
      Question.create!(
        :number => "Number",
        :text => "Text",
        :answer => "Answer",
        :options => "Options",
        :pool => nil,
        :group => nil
      )
    ])
  end

  it "renders a list of questions" do
    render
    assert_select "tr>td", :text => "Number".to_s, :count => 2
    assert_select "tr>td", :text => "Text".to_s, :count => 2
    assert_select "tr>td", :text => "Answer".to_s, :count => 2
    assert_select "tr>td", :text => "Options".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
