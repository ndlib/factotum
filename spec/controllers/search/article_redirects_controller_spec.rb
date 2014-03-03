require 'spec_helper'

describe Search::ArticleRedirectsController do
  describe "#index" do
    it "creates a redirect" do
      get :index, q: 'test'
      expect(assigns(:redirect)).to be_a_kind_of Search::ArticleRedirect
      expect(response).to be_redirect
    end
  end
end
