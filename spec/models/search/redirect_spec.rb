require 'rails_helper'

describe Search::Redirect do
  subject { described_class.new({q: "example"})}

  describe '#accept_params' do
    it "accepts q" do
      expect(subject.accept_params).to be == [:q]
    end
  end

  describe '#clean_params' do
    it "accepts q and rejects other params" do
      params = {q: 'test', a: 'test', b: 'test'}
      expect(subject.clean_params(params)).to be == {q: 'test'}
    end
  end

  describe '#search?' do
    it "is true if q is present" do
      expect(subject.search?).to be_true
    end

    it "is false if q is not present" do
      subject.stub(:params).and_return({q: nil})
      expect(subject.search?).to be_false
    end
  end

  describe '#query_params' do
    it "passes the params by default" do
      expect(subject.query_params).to be == {q: "example"}
    end
  end

  describe '#query_string' do
    it "formats query_params as a query string" do
      expect(subject.query_string).to be == "?q=example"
    end

    it "uses #query_params" do
      subject.stub(:query_params).and_return({q: 'test'})
      expect(subject.query_string).to be == "?q=test"
    end

    it "returns an empty string if #query_params is blank" do
      subject.stub(:query_params).and_return({})
      expect(subject.query_string).to be == ""
    end
  end

  describe '#path' do
    it "is / by default" do
      expect(subject.path).to be == "/"
    end
  end

  describe '#base_url' do
    it "is librarypprd" do
      expect(subject.base_url).to be == "http://librarypprd.library.nd.edu"
    end
  end

  describe '#url' do
    it "includes the base_url" do
      test_base_url = "test_base_url"
      subject.stub(:base_url).and_return(test_base_url)
      expect(subject.url).to be == "#{test_base_url}#{subject.path}#{subject.query_string}"
    end

    it "includes the path" do
      test_path = "test_path"
      subject.stub(:path).and_return(test_path)
      expect(subject.url).to be == "#{subject.base_url}#{test_path}#{subject.query_string}"
    end

    it "includes the query preceded by a question mark" do
      test_query = "?q=my_test_query"
      subject.stub(:query_string).and_return(test_query)
      expect(subject.url).to be == "#{subject.base_url}#{subject.path}#{test_query}"
    end
  end

  describe 'self' do
    subject { described_class }

    describe '#new' do
      it "stores the params" do
        params = {q: "Test"}
        redirect = subject.new(params)
        expect(redirect.params).to be == params
      end

      it "cleans the params" do
        params = {q: "Test", r: 'another param'}
        redirect = subject.new(params)
        expect(redirect.params).to be == {q: "Test"}
      end
    end

    describe '#config_name' do
      it "returns the environment" do
        expect(subject.config_name).to be == Rails.env
      end
    end

    describe '#config' do
      it "returns the default config" do
        config_file = File.join(Rails.root,"config","search.yml")
        yml = YAML::load_file(config_file).with_indifferent_access
        expect(subject.config).to be == yml[:default]
      end
    end
  end

  describe 'production' do
    before do
      described_class.stub(:config_name).and_return('production')
    end

    describe '#base_url' do
      it "is library" do
        expect(subject.base_url).to be == "http://library.nd.edu"
      end
    end

    describe 'self' do
      subject { described_class }

      it "returns the production config" do
        config_file = File.join(Rails.root,"config","search.yml")
        yml = YAML::load_file(config_file).with_indifferent_access
        subject.stub(:config_name).and_return('production')
        expect(subject.config).to be == yml[:production]
      end
    end
  end
end
