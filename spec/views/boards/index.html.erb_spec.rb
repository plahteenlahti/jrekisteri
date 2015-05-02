require 'rails_helper'

RSpec.describe "boards/index", type: :view do
  before(:each) do
    assign(:boards, [
      Board.create!(
        :organization_id => 1
      ),
      Board.create!(
        :organization_id => 1
      )
    ])
  end

  it "renders a list of boards" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
