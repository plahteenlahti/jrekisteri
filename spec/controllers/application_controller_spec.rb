require 'rails_helper'

describe ApplicationController , type: :controller do
  let!(:user){ FactoryGirl.create(:user) }

  describe 'with user' do
    it 'method current user works' do
      expect(current_user).to  eq("Koira Koira")
    end
  end

end