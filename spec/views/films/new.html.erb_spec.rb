require 'rails_helper'

RSpec.describe "films/new", type: :view do
  before(:each) do
    assign(:film, Film.new())
  end

  it "renders new film form" do
    render

    assert_select "form[action=?][method=?]", films_path, "post" do
    end
  end
end
