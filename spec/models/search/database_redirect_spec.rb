require 'rails_helper'

describe Search::DatabaseRedirect do
  subject { described_class.new({q: "example"})}

  describe '#accept_params' do
    it "accepts q" do
      expect(subject.accept_params).to be == [:q]
    end
  end

  describe '#query_params' do
    it "changes q to query and adds stats_search_type" do
      expect(subject.query_params).to be == {query: "example", stats_search_type: "dbf_search"}
    end
  end

  describe '#path' do
    it "is stats.cgi" do
      expect(subject.path).to be == "/ddw/public/statistics/stats.cgi"
    end
  end

  describe '#base_url' do
    it "is librarypprd" do
      expect(subject.base_url).to be == "http://librarypprd.library.nd.edu"
    end
  end

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
      it "is library prod" do
        expect(subject.base_url).to be == "http://library.nd.edu"
      end
    end
  end
end
