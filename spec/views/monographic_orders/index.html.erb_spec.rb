require "spec_helper"

describe "monographic_orders/index.html.erb" do
  context "user" do
    login_user

    before do
      @search = AcquisitionOrderSearch.new()
      @monographic_orders = @search.search(view.current_user.monographic_orders).page(1)
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
