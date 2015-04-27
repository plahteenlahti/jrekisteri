require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :forename => "Forename",
        :surname => "Surname",
        :email => "Email",
        :city => "City"
      ),
      User.create!(
        :forename => "Forename",
        :surname => "Surname",
        :email => "Email",
        :city => "City"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Forename".to_s, :count => 2
    assert_select "tr>td", :text => "Surname".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
  end
end
