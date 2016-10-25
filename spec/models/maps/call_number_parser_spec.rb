require 'rails_helper'

describe Maps::CallNumberRange::CallNumberParser do
  let(:parser) {Maps::CallNumberRange::CallNumberParser.new(call_number)}

  describe "PR 6073 .A83 B6" do
    let(:call_number) { "PR 6073 .A83 B6" }

    it "parses out the division" do
      expect(parser.division).to eq("PR")
    end

    it "parses out the subject" do
      expect(parser.subject).to eq("006073")
    end

    it "parses out the author" do
      expect(parser.author).to eq(".A83 B6")
    end

    it "creates a search string code " do
      expect(parser.search_string).to eq("PR006073")
    end
  end
end
