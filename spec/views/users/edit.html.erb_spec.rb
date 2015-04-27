require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :forename => "MyString",
      :surname => "MyString",
      :email => "MyString",
      :city => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_forename[name=?]", "user[forename]"

      assert_select "input#user_surname[name=?]", "user[surname]"

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_city[name=?]", "user[city]"
    end
  end
end
