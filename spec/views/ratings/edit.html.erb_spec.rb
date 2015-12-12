require 'rails_helper'

RSpec.describe "ratings/edit", type: :view do
  before(:each) do
    @rating = assign(:rating, Rating.create!(
      :number => 1,
      :submitting_user => "",
      :subject_user => "",
      :comment => "MyText"
    ))
  end

  it "renders the edit rating form" do
    render

    assert_select "form[action=?][method=?]", rating_path(@rating), "post" do

      assert_select "input#rating_number[name=?]", "rating[number]"

      assert_select "input#rating_submitting_user[name=?]", "rating[submitting_user]"

      assert_select "input#rating_subject_user[name=?]", "rating[subject_user]"

      assert_select "textarea#rating_comment[name=?]", "rating[comment]"
    end
  end
end
