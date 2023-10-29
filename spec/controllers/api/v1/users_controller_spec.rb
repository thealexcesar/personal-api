require 'rails_helper'
RSpec.describe Api::V1::UsersController, type: :controller do
  before(:each) { request.headers['Accept'] = 'application/personal-api.v1' }

  describe 'Get /show' do
    before(:each) do
      @user = FactoryBot.create(:user)
      get :show, params: { id: @user.id }, format: :json
    end

    it 'returns info about report users' do
      expect(User.all)
      puts response.body
    end

    it 'returns info about user' do
      puts response.body
      user_response = JSON.parse(response.body, symbolize_names: true)
      expect(user_response[:email]).to eq(@user.email)
    end

    it { should respond_with :ok }
  end
end
