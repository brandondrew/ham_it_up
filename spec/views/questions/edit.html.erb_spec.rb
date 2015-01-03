require 'rails_helper'

RSpec.describe "questions/edit", :type => :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      :number => "MyString",
      :text => "MyString",
      :answer => "MyString",
      :options => "MyString",
      :pool => nil,
      :group => nil
    ))
  end

  it "renders the edit question form" do
    render

    assert_select "form[action=?][method=?]", question_path(@question), "post" do

      assert_select "input#question_number[name=?]", "question[number]"

      assert_select "input#question_text[name=?]", "question[text]"

      assert_select "input#question_answer[name=?]", "question[answer]"

      assert_select "input#question_options[name=?]", "question[options]"

      assert_select "input#question_pool_id[name=?]", "question[pool_id]"

      assert_select "input#question_group_id[name=?]", "question[group_id]"
    end
  end
end
