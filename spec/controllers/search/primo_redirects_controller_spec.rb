require 'spec_helper'

describe Search::PrimoRedirectsController do
  describe "#index" do
    it "creates a redirect" do
      get :index, q: 'test', institution: 'NDU', tab: 'onesearch'
      expect(assigns(:redirect)).to be_a_kind_of Search::PrimoRedirect
      expect(response).to be_redirect
    end
  end
end
