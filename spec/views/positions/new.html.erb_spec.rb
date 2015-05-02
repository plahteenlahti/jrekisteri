require 'rails_helper'

RSpec.describe "positions/new", type: :view do
  before(:each) do
    assign(:position, Position.new(
      :name => "MyString",
      :board_id => 1,
      :user_id => 1
    ))
  end

  it "renders new position form" do
    render

    assert_select "form[action=?][method=?]", positions_path, "post" do

      assert_select "input#position_name[name=?]", "position[name]"

      assert_select "input#position_board_id[name=?]", "position[board_id]"

      assert_select "input#position_user_id[name=?]", "position[user_id]"
    end
  end
end
