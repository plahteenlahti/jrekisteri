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
end
