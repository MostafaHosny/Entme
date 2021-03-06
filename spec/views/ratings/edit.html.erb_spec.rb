require 'rails_helper'

RSpec.describe "ratings/edit", type: :view do
  before(:each) do
    @rating = assign(:rating, Rating.create!(
      :user => nil,
      :stars => 1,
      :comment => "",
      :rateable_id => 1,
      :rateable_type => "MyString"
    ))
  end

  it "renders the edit rating form" do
    render

    assert_select "form[action=?][method=?]", rating_path(@rating), "post" do

      assert_select "input[name=?]", "rating[user_id]"

      assert_select "input[name=?]", "rating[stars]"

      assert_select "input[name=?]", "rating[comment]"

      assert_select "input[name=?]", "rating[rateable_id]"

      assert_select "input[name=?]", "rating[rateable_type]"
    end
  end
end
