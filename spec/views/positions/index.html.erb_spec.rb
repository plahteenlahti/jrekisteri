require 'rails_helper'

RSpec.describe "positions/index", type: :view do
  before(:each) do
    assign(:positions, [
      Position.create!(
        :name => "Name",
        :board_id => 1,
        :user_id => 2
      ),
      Position.create!(
        :name => "Name",
        :board_id => 1,
        :user_id => 2
      )
    ])
  end

  it "renders a list of positions" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
