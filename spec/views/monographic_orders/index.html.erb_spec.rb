require "spec_helper"

describe "monographic_orders/index.html.erb" do
  context "user" do
    before do
      login_user
    end

    before do
      @search = AcquisitionOrderSearch.new()
    end

    it "succeeds" do
      render
    end

    it "renders the search form" do
      render
      expect(response).to render_template(partial: '_search_form')
    end
  end
end
