require 'spec_helper'

describe Search::PrimoRedirect do
  def test_params(merge_params = {})
    {q: "example", institution: 'NDU', tab: 'onesearch'}.merge(merge_params)
  end
  subject { described_class.new(test_params)}

  describe '#accept_params' do
    it "accepts primo params" do
      expect(subject.accept_params).to be == [:q, :institution, :vid, :tab, :search_scope, :mode]
    end
  end

  describe '#query_params' do
    it "changes q to query and adds stats_search_type" do
      expect(subject.query_params).to be == {
        "vl(freeText0)" => "example",
        institution: 'NDU',
        vid: 'NDU',
        tab: 'onesearch',
        indx: 1,
        fn: 'search',
        mode: 'Basic'
      }
    end

    it "changes adds vl(freeText0) if mode is advanced" do
      new_params = subject.params.merge({mode: 'Advanced'})
      subject.stub(:params).and_return(new_params)
      expect(subject.query_params[:mode]).to be == 'Advanced'
      expect(subject.query_params['vl(freeText0)']).to be == new_params[:q]
    end
  end

  describe '#mode' do
    it "is Basic by default" do
      expect(subject.mode).to be == "Basic"
    end

    it "is Basic for an invalid mode" do
      subject.stub(:params).and_return({mode: 'Asdf'})
      expect(subject.mode).to be == "Basic"
    end

    it "can be set to Advanced" do
      subject.stub(:params).and_return({mode: 'Advanced'})
      expect(subject.mode).to be == "Advanced"
    end
  end

  describe '#search_scope' do
    it "returns a search scope for partner libraries" do
      subject.stub(:params).and_return(test_params({tab: 'nd_campus', search_scope: 'partner'}))
      expect(subject.search_scope).to be == 'scope:(MALC),scope:("NDUPCH"),scope:(NDU),scope:(BCI),scope:(HCC),scope:(SMC),scope:(NDLAW)'
    end

    it "returns a search scope for special collections" do
      subject.stub(:params).and_return(test_params({tab: 'nd_campus', search_scope: 'spec_coll'}))
      expect(subject.search_scope).to be == 'scope:(RARE),scope:(MRARE),scope:(SPEC)'
    end

    it "returns nil if not present" do
      subject.stub(:params).and_return({})
      expect(subject.search_scope).to be_nil
    end

    it "returns nil if params[:search_scope] is invalid" do
      subject.stub(:params).and_return({search_scope: 'fake_scope'})
      expect(subject.search_scope).to be_nil
    end
  end

  describe '#vid' do
    it "returns params[:vid] if present" do
      subject.stub(:params).and_return({vid: 'myvid'})
      expect(subject.vid).to be == 'myvid'
    end

    it "returns #institution if not present" do
      subject.stub(:institution).and_return('institution')
      subject.stub(:params).and_return({})
      expect(subject.vid).to be == 'institution'
    end
  end

  describe '#path' do
    it "is the regular search page" do
      expect(subject.path).to be == '/primo_library/libweb/action/search.do'
    end
  end

  describe '#base_url' do
    it "is primotest" do
      expect(subject.base_url).to be == "http://primotest.library.nd.edu"
    end
  end

  describe '#url' do
    it "includes the base_url, path, and query_string" do
      expect(subject.url).to be == "#{subject.base_url}#{subject.path}#{subject.query_string}"
    end
  end

  describe 'production' do
    before do
      described_class.stub(:config_name).and_return('production')
    end

    describe '#base_url' do
      it "is onesearch for NDU" do
        subject.stub(:institution).and_return('NDU')
        expect(subject.base_url).to be == "http://onesearch.library.nd.edu"
      end

      it "is catalogplus for non-NDU" do
        subject.stub(:institution).and_return('SMC')
        expect(subject.base_url).to be == "http://catalogplus.library.nd.edu"
      end
    end
  end
end
