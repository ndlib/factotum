require "spec_helper"

describe "monographic_orders/_search_form.html.erb" do
  def render_form
    render _default_render_options.merge(locals: {search: @search})
  end

  context "user" do
    before do
      login_user
    end

    context "new search" do
      before do
        @search = AcquisitionOrderSearch.new()
      end

      it "has the form body" do
        render_form
        rendered.should have_selector('div.accordion-body')
      end

      it "hides the form" do
        render_form
        rendered.should_not have_selector('div.accordion-body.in')
      end
    end

    context "search with value" do
      before do
        @search = AcquisitionOrderSearch.new(start_date: 5.days.ago)
      end

      it "shows the form" do
        render_form
        rendered.should have_selector('div.accordion-body.in')
      end
    end
  end
end
