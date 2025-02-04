require 'rails_helper'

RSpec.describe PublicsController, type: :controller do
  describe 'GET #home' do
    it 'returns http success' do
      get :home
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #articles' do
    it 'returns http success' do
      get :articles
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #emissions' do
    it 'returns http success' do
      get :emissions
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #about' do
    it 'returns http success' do
      get :about
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #contact' do
    it 'returns http success' do
      get :contact
      expect(response).to have_http_status(:success)
    end
  end
end
