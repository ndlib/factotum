require 'rails_helper'

describe Search::EjournalRedirect do
  subject { described_class.new({q: "example"})}

  describe '#accept_params' do
    it "accepts q" do
      expect(subject.accept_params).to be == [:q]
    end
  end

  describe '#path' do
    it "is /catalog" do
      expect(subject.path).to be == "/catalog"
    end
  end

  describe '#base_url' do
    it "is ejlpprd" do
      expect(subject.base_url).to be == "http://ejlpprd.library.nd.edu"
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
      it "is ejl prod" do
        expect(subject.base_url).to be == "http://ejl.library.nd.edu"
      end
    end
  end
end
