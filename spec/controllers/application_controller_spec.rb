require 'rails_helper'

describe ApplicationController 'with current user' do
  let!(:user){ FactoryGirl.create(:user) }

  it 'method current user works' do
      expect(current_user).to  eq("Koira Koira")
  end
end