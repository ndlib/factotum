require 'rails_helper'

describe UrlToPdfConverter do

  let(:test_url) { "http://test.host.com/something" }

  it "sends a command call to wkhtmltopdf" do
    pdf_converter = UrlToPdfConverter.new(test_url)

    allow(pdf_converter).to receive(:executable).and_return('wkhtmltopdf')
    expect(pdf_converter).to receive("system").with("wkhtmltopdf #{test_url} #{pdf_converter.pdf_path}")

    pdf_converter.convert
  end

end
