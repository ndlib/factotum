require "spec_helper"

describe "monographic_orders/index.html.erb" do
  context "user" do
    login_user

    before do
      @search = AcquisitionOrderSearch.new()
    end

    it "succeeds" do
      render
    end

    it "renders the search form" do
      render
      response.should render_template(partial: '_search_form')
    end
  end
end
