require "spec_helper"

describe "layouts/catalog.html.erb" do

  it "should render" do
    render
  end

  describe 'precompiled assets' do
    # before(:all) do
    #   enable_asset_precompiling
    # end

    # after(:all) do
    #   disable_asset_precompiling
    # end

    it "renders" do
      render
    end
  end
end
