require 'rails_helper'

RSpec.describe "films/show", type: :view do
  before(:each) do
    @film = assign(:film, Film.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
