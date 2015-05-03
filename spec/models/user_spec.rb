require 'rails_helper'

describe "with a proper password" do
  let(:user){ FactoryGirl.create(:user) }

  it "is saved" do
    expect(user).to be_valid
    expect(User.count).to eq(1)
  end

  it "to_s is correct" do
    expect(user.to_s).to eq("Koira Koira")
  end

end

