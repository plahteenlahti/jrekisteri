require 'rails_helper'


describe "with correctly created organization" do
  let(:organization){ FactoryGirl.create(:organization) }

  it "is saved" do
    expect(organization).to be_valid
    expect(Organization.count).to eq(1)
  end

  it "to_s is correct" do
    expect(organization.to_s).to eq("Intelligenzia")
  end

end