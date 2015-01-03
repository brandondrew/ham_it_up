require 'rails_helper'

RSpec.describe "questions/new", :type => :view do
  before(:each) do
    assign(:question, Question.new(
      :number => "MyString",
      :text => "MyString",
      :answer => "MyString",
      :options => "MyString",
      :pool => nil,
      :group => nil
    ))
  end

  it "renders new question form" do
    render

    assert_select "form[action=?][method=?]", questions_path, "post" do

      assert_select "input#question_number[name=?]", "question[number]"

      assert_select "input#question_text[name=?]", "question[text]"

      assert_select "input#question_answer[name=?]", "question[answer]"

      assert_select "input#question_options[name=?]", "question[options]"

      assert_select "input#question_pool_id[name=?]", "question[pool_id]"

      assert_select "input#question_group_id[name=?]", "question[group_id]"
    end
  end
end
