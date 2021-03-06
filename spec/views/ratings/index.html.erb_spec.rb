require 'rails_helper'

RSpec.describe "ratings/index", type: :view do
  before(:each) do
    assign(:ratings, [
      Rating.create!(
        :user => nil,
        :stars => 2,
        :comment => "",
        :rateable_id => 3,
        :rateable_type => "Rateable Type"
      ),
      Rating.create!(
        :user => nil,
        :stars => 2,
        :comment => "",
        :rateable_id => 3,
        :rateable_type => "Rateable Type"
      )
    ])
  end

  it "renders a list of ratings" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Rateable Type".to_s, :count => 2
  end
end
