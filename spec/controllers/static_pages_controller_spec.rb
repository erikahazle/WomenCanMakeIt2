require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do

  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #about" do
    it "returns http success" do
      get :about
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #features" do
    it "returns http success" do
      get :features
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #build_a_blog" do
    it "returns http success" do
      get :build_a_blog
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #build_ecommerce_site" do
    it "returns http success" do
      get :build_ecommerce_site
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #contact" do
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end
  end

end
