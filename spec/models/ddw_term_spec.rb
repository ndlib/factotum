require 'spec_helper'

describe DDWTerm do
  it "should have valid library.nd.edu links for each quicksearch resource", :connects_to_library => true do
    terms = DDWTerm.quicksearch_terms
    terms.size.should > 0
    require 'open-uri'
    terms.each do |term|
      term.articles_url.should match(/library\.nd\.edu/)
      page = open(term.articles_url, "User-Agent" => "Factotum/1.0")
      doc = Nokogiri::HTML(page)
      header = doc.xpath("//h1").first
      header.text.should == term.term_name
    end
  end
  
  it "should create a xerxes url for each quicksearch resource" do
    terms = DDWTerm.quicksearch_terms
    terms.size.should > 0
    terms.each do |term|
      term.xerxes_url.should match(/xerxes/)
    end
  end
  
  describe "connecting to xerxes" do
    it "should have valid xerxes links for each quicksearch resource", :connects_to_xerxes => true do
      terms = DDWTerm.quicksearch_terms
      require 'open-uri'
      terms.each do |term|
        page = open(term.xerxes_url, "User-Agent" => "Factotum/1.0")
        doc = Nokogiri::HTML(page)
        header = doc.xpath("//h1").first
        header.text.should_not eql(""), "Invalid xerxes_url for term '#{term.term_name}': #{term.xerxes_url}"
        header.text.should == term.xerxes_name
      end
    end
  end
end
