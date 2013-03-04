require 'spec_helper'

describe Maps::CallNumberParser do 
  let(:parser) {Maps::CallNumberParser.new(call_number)}

  describe "PR 6073 .A83 B6" do
    let(:call_number) { "PR 6073 .A83 B6" }

    it "parses out the division" do 
      parser.division.should == "PR"
    end

    it "parses out the subject" do 
      parser.subject.should == "006073"
    end

    it "parses out the author" do 
      parser.author.should == ".A83 B6"
    end    

    it "creates a search string code " do 
      parser.search_string.should == "PR006073"
    end
  end
end
