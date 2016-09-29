require 'rails_helper'

describe Search::ArticleRedirect do
  describe 'with search' do
    subject { described_class.new({q: "example"})}

    describe '#accept_params' do
      it "accepts q and subject" do
        expect(subject.accept_params).to be == [:q, :subject]
      end
    end

    describe '#subject' do
      it 'is genmul by default' do
        expect(subject.subject).to be == 'genmul'
      end

      it 'can be overriden' do
        allow(subject).to receive(:params).and_return({q: "example", subject: 'architecture'})
        expect(subject.subject).to be == 'architecture'
      end
    end

    describe '#query_params' do
      it "adjusts the params" do
        expect(subject.query_params).to be == {query: "example", subject: "genmul", interface: "basic", search_type: "subject", stats_search_type: "article_search"}
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

  describe 'no search' do
    subject { described_class.new({q: nil})}

    describe '#query_params' do
      it "has params for the quicksearch.cgi redirect" do
        expect(subject.query_params).to be == {interface: "advanced", subject: "genmul", search_type: "subject"}
      end
    end

    describe '#path' do
      it "is the path to the general + multidisciplinary subject" do
        expect(subject.path).to be == "/eresources/quicksearch/quicksearch.cgi"
      end
    end

    describe '#base_url' do
      it "is librarypprd" do
        expect(subject.base_url).to be == "http://librarypprd.library.nd.edu"
      end
    end

    describe '#url' do
      it "includes the base_url, path, and query string" do
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
end
