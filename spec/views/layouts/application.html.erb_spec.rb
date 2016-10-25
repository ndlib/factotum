require "spec_helper"

describe "layouts/application.html.erb" do

  it "should render" do
    render
  end

  describe 'precompiled assets' do
    # before(:all) do
    #   enable_asset_precompiling
    # end

    before(:each) do
      stub_hesburgh_assets
    end

    after(:all) do
      disable_asset_precompiling
    end

    it "renders" do
      render
    end

    describe 'main' do
      before do
        allow(view).to receive(:active_branch_code).and_return('main')
      end

      it "renders" do
        render
      end
    end

    describe 'architecture' do
      before do
        allow(view).to receive(:active_branch_code).and_return('architecture_library')
      end

      it "renders" do
        render
      end
    end
  end
end
