require 'rails_helper'

RSpec.describe "films/index", type: :view do
  before(:each) do
    assign(:films, [
      Film.create!(),
      Film.create!()
    ])
  end

  it "renders a list of films" do
    render
  end
end
