require 'rails_helper'

describe Search::PrimoDeepLinkRedirect do
  subject { described_class.new({q: "example", institution: 'NDU', tab: 'onesearch'})}

  describe '#accept_params' do
    it "accepts primo params" do
      expect(subject.accept_params).to be == [:q, :institution, :vid, :tab, :search_scope, :mode]
    end
  end

  describe '#query_params' do
    it "changes q to query and adds stats_search_type" do
      expect(subject.query_params).to be == {
        fn: 'search',
        ct: 'search',
        initialSearch: true,
        mode: 'Basic',
        tab: 'onesearch',
        indx: 1,
        dum: true,
        srt: 'rank',
        vid: 'NDU',
        'vl(freeText0)': 'any,contains,example'
      }
    end

    it "changes adds vl(freeText0) if mode is advanced" do
      new_params = subject.params.merge({mode: 'Advanced'})
      allow(subject).to receive(:params).and_return(new_params)
      expect(subject.query_params[:mode]).to be == 'Advanced'
      expect(subject.query_params['vl(freeText0)']).to be == new_params[:q]
    end

    # it "uses #pc_availabilty_mode to determine the pcAvailabiltyMode " do
    #   expect(subject).to receive(:pc_availabilty_mode).and_return("PCMODE")
    #   expect(subject.query_params.fetch(:pcAvailabiltyMode)).to eq("PCMODE")
    # end
  end

  describe '#mode' do
    it "is Basic by default" do
      expect(subject.mode).to be == "Basic"
    end

    it "is Basic for an invalid mode" do
      allow(subject).to receive(:params).and_return({mode: 'Asdf'})
      expect(subject.mode).to be == "Basic"
    end

    it "can be set to Advanced" do
      allow(subject).to receive(:params).and_return({mode: 'Advanced'})
      expect(subject.mode).to be == "Advanced"
    end
  end

  describe '#default_search_scope' do
    it "returns the default for NDU and onesearch" do
      allow(subject).to receive(:institution).and_return('NDU')
      allow(subject).to receive(:tab).and_return('onesearch')
      expect(subject.default_search_scope).to be == 'malc_blended'
    end

    it "returns the default for SMC and smc" do
      allow(subject).to receive(:institution).and_return('SMC')
      allow(subject).to receive(:tab).and_return('smc')
      expect(subject.default_search_scope).to be == 'SMC'
    end

    it "returns nil if the tab isn't found" do
      allow(subject).to receive(:tab).and_return('faketab')
      expect(subject.default_search_scope).to be_nil
    end

    it "returns nil if the institution isn't found" do
      allow(subject).to receive(:institution).and_return('fakeinstitution')
      expect(subject.default_search_scope).to be_nil
    end
  end

  describe '#search_scope' do
    it "returns params[:search_scope] if present" do
      allow(subject).to receive(:params).and_return({search_scope: 'myscope'})
      expect(subject.search_scope).to be == 'myscope'
    end

    it "returns #default_search_scope if not present" do
      allow(subject).to receive(:default_search_scope).and_return('defaultscope')
      allow(subject).to receive(:params).and_return({})
      expect(subject.search_scope).to be == 'defaultscope'
    end
  end

  describe '#vid' do
    it "returns params[:vid] if present" do
      allow(subject).to receive(:params).and_return({vid: 'myvid'})
      expect(subject.vid).to be == 'myvid'
    end

    it "returns #institution if not present" do
      allow(subject).to receive(:institution).and_return('institution')
      allow(subject).to receive(:params).and_return({})
      expect(subject.vid).to be == 'institution'
    end
  end

  describe '#path' do
    it "is the deep link search page" do
      expect(subject.path).to be == '/primo_library/libweb/action/dlSearch.do'
    end
  end

  describe '#base_url' do
    it "is onesearchpprd" do
      expect(subject.base_url).to be == "http://onesearchpprd.library.nd.edu"
    end
  end

  # describe '#query_string' do
  #   it "adds the displayField parameters for highlighting" do
  #     expect(subject.query_string).to match(/&displayField=title&displayField=creator/)
  #   end
  # end

  describe '#url' do
    it "includes the base_url, path, and query_string" do
      expect(subject.url).to be == "#{subject.base_url}#{subject.path}#{subject.query_string}"
    end
  end

  describe 'production' do
    before do
      allow(described_class).to receive(:config_name).and_return('production')
    end

    describe '#base_url' do
      it "is onesearch for NDU" do
        allow(subject).to receive(:institution).and_return('NDU')
        expect(subject.base_url).to be == "http://onesearch.library.nd.edu"
      end

      it "is onesearch for non-NDU" do
        allow(subject).to receive(:institution).and_return('SMC')
        expect(subject.base_url).to be == "http://onesearch.library.nd.edu"
      end
    end
  end

  describe "#pc_availabilty_mode" do
    it "returns 'true' when vid == NDU" do
      allow(subject).to receive(:vid).and_return("NDU")
      expect(subject.pc_availabilty_mode).to eq("true")
    end

    it "returns 'false' when vid == SMC" do
      allow(subject).to receive(:vid).and_return("SMC")
      expect(subject.pc_availabilty_mode).to eq("false")
    end

    it "returns 'false' when vid == BCI" do
      allow(subject).to receive(:vid).and_return("BCI")
      expect(subject.pc_availabilty_mode).to eq("false")
    end

    it "returns 'false' when vid == HCC" do
      allow(subject).to receive(:vid).and_return("HCC")
      expect(subject.pc_availabilty_mode).to eq("false")
    end
  end
end
