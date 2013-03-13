require 'spec_helper'

describe Availability::PdfConverter do

  let(:test_url) { "http://test.host.com/something" }

  it "sends a command call to wkhtmltopdf" do
    pdf_converter = Availability::PdfConverter.new(test_url)

    pdf_converter.stub(:executable).and_return('wkhtmltopdf')
    pdf_converter.should_receive("system").with("wkhtmltopdf #{test_url} #{pdf_converter.pdf_path}")

    pdf_converter.convert
  end

end
