require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :forename => "Forename",
      :surname => "Surname",
      :email => "Email",
      :city => "City"
    ))
  end
end
