require 'rails_helper'

RSpec.describe "films/edit", type: :view do
  before(:each) do
    @film = assign(:film, Film.create!())
  end

  it "renders the edit film form" do
    render

    assert_select "form[action=?][method=?]", film_path(@film), "post" do
    end
  end
end
