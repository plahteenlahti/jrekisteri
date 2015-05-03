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
end
