require 'rails_helper'

RSpec.describe "ratings/index", type: :view do
  before(:each) do
    assign(:ratings, [
      Rating.create!(
        :number => 1,
        :submitting_user => "",
        :subject_user => "",
        :comment => "MyText"
      ),
      Rating.create!(
        :number => 1,
        :submitting_user => "",
        :subject_user => "",
        :comment => "MyText"
      )
    ])
  end

  it "renders a list of ratings" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
