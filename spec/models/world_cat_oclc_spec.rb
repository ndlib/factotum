require 'spec_helper'

describe WorldCatOCLC do
  let(:initializer_values) { {oclc: 12345} }
  subject do
    object = nil
    VCR.use_cassette "worldcat/#{initializer_values.inspect}" do
      object = described_class.new(initializer_values)
    end
    object
  end

  describe 'RDA' do
    let(:initializer_values) { {isbn: 9781610694896} }

    it 'pulls the publisher from the 264 field' do
      expect(subject.title).to eq("The RDA workbook : learning the basics of Resource Description and Access")
      expect(subject.publisher).to eq("Santa Barbara, California : Libraries Unlimited, an imprint of ABC-CLIO, LLC,")
    end
  end
end
