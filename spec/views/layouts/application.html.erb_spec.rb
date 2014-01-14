require "spec_helper"

describe "layouts/application.html.erb" do

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

    describe 'main' do
      before do
        view.stub(:active_branch_code).and_return('main')
      end

      it "renders" do
        render
      end
    end

    describe 'architecture' do
      before do
        view.stub(:active_branch_code).and_return('architecture_library')
      end

      it "renders" do
        render
      end
    end

    # describe 'invalid branch' do
    #   before do
    #     view.stub(:active_branch_code).and_return('fake_library')
    #   end

    #   it "raises ActionView::Template::Error" do
    #     expect { render }.to raise_error ActionView::Template::Error
    #   end
    # end
    
  end
end
