require 'rails_helper'

RSpec.describe "organizations/index", type: :view do
  before(:each) do
    assign(:organizations, [
      Organization.create!(
        :name => "Name",
        :founded => 1,
        :description => "Description"
      ),
      Organization.create!(
        :name => "Name",
        :founded => 1,
        :description => "Description"
      )
    ])
  end
end
