require 'rails_helper'

RSpec.describe "positions/edit", type: :view do
  before(:each) do
    @position = assign(:position, Position.create!(
      :name => "MyString",
      :board_id => 1,
      :user_id => 1
    ))
  end

  it "renders the edit position form" do
    render

    assert_select "form[action=?][method=?]", position_path(@position), "post" do

      assert_select "input#position_name[name=?]", "position[name]"

      assert_select "input#position_board_id[name=?]", "position[board_id]"

      assert_select "input#position_user_id[name=?]", "position[user_id]"
    end
  end
end
