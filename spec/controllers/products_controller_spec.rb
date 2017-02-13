require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  describe "GET #index" do
    it "returns http success" do
      expect(Product).to receive(:search).with('').and_call_original
      get :index, params: { search: '' }
      expect(response).to have_http_status(:success)
    end

    it "applies search query" do
      expect(Product).to receive(:search).with('ipho').and_call_original
      get :index, params: { search: 'ipho' }
      expect(response).to have_http_status(:success)
    end
  end
end
