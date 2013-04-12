require 'spec_helper'

describe DDWTerm do
  describe 'NullDB' do
    include NullDB::RSpec::NullifiedDatabase

    describe 'self' do
      subject { DDWTerm }
      describe '#quicksearch_terms' do
        before do
          stub_ddw_quicksearch_terms
        end

        it 'is sorted alphabetically' do
          terms = subject.quicksearch_terms
          expect(terms.size).to be > 0
          sorted = terms.sort{ |a,b| a.term_name <=> b.term_name }
          expect(terms).to be == sorted
        end
      end

      describe '#xerxes_subject_path' do
        it "is the base subject path in xerxes" do
          expect(subject.xerxes_subject_path).to be == "/quicksearch/databases/subject/"
        end
      end
    end

    describe 'instance' do
      subject { DDWTerm.new }

      before do
        subject.stub(:term_name).and_return("Art, Art History and Design")
      end

      describe '#library_slug' do
        it "converts term_name to the library subject slug" do
          expect(subject.library_slug).to be == "art_art_history_and_design"
        end
      end

      describe '#articles_url' do
        it "converts term_name to the library articles url" do
          expect(subject.articles_url).to be == "http://www.library.nd.edu/subjects/#{subject.library_slug}/articles"
        end
      end

      describe '#xerxes_slug' do
        it "converts term_name to the xerxes subject slug" do
          expect(subject.xerxes_slug).to be == "art-art-history-design"
        end

        describe 'exceptions' do
          it "fixes engineering" do
            subject.stub(:term_name).and_return("Engineering (General)")
            expect(subject.xerxes_slug).to be == "engineering"
          end

          it "fixes history US & Canada" do
            subject.stub(:term_name).and_return("History (U.S. and Canada)")
            expect(subject.xerxes_slug).to be == "history-us-and-canada-"
          end

          it "fixes world history" do
            subject.stub(:term_name).and_return("History (World)")
            expect(subject.xerxes_slug).to be == "history-world-"
          end

          it "fixes library information science" do
            subject.stub(:term_name).and_return("Library and Information Science")
            expect(subject.xerxes_slug).to be == "library-and-information-sciences"
          end

          it "fixes materials science" do
            subject.stub(:term_name).and_return("Materials Science (including Biomaterials)")
            expect(subject.xerxes_slug).to be == "materials-science-incl-biomaterials-"
          end
        end
      end

      describe '#xerxes_path' do
        it "converts term_name to the xerxes uri path" do
          expect(subject.xerxes_path).to be == "/quicksearch/databases/subject/#{subject.xerxes_slug}"
        end
      end
    end
  end

  describe 'connects to library', :connects_to_library => true do
    it "should have valid library.nd.edu links for each quicksearch resource" do
      terms = DDWTerm.quicksearch_terms
      expect(terms.size).to be > 0
      require 'open-uri'
      terms.each do |term|
        term.articles_url.should match(/library\.nd\.edu/)
        page = open(term.articles_url, "User-Agent" => "Factotum/1.0")
        doc = Nokogiri::HTML(page)
        header = doc.xpath("//h1").first
        header.text.should == term.term_name
      end
    end

    describe "connecting to xerxes" do
      it "should have valid xerxes links for each quicksearch resource" do
        terms = DDWTerm.quicksearch_terms
        require 'open-uri'
        terms.each do |term|
          xerxes_url = "http://#{Rails.configuration.xerxes_domain}#{term.xerxes_slug}"
          page = open(xerxes_url, "User-Agent" => "Factotum/1.0")
          doc = Nokogiri::HTML(page)
          header = doc.xpath("//h1").first
          header.text.should_not eql(""), "Invalid xerxes_url for term '#{term.term_name}': #{xerxes_url}"
          header.text.should == term.xerxes_name
        end
      end
    end
  end
end
