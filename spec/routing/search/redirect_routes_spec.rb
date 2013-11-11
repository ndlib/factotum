require 'spec_helper'

describe 'Redirects' do
  it "routes to articles" do
    expect({ :get => "/utilities/search/articles" }).to route_to(
      action: "index", controller: "search/article_redirects"
    )
  end

  it "routes to databases" do
    expect({ :get => "/utilities/search/databases" }).to route_to(
      action: "index", controller: "search/database_redirects"
    )
  end

  it "routes to ejournals" do
    expect({ :get => "/utilities/search/ejournals" }).to route_to(
      action: "index", controller: "search/ejournal_redirects"
    )
  end

  describe 'primo' do
    it "routes to the index" do
      expect({ :get => "/utilities/search/primo" }).to route_to(
        action: "index", controller: "search/primo_redirects"
      )
    end

    it "has a catalog route" do
      expect({ :get => "/utilities/search/catalog" }).to route_to(
        action: "index", controller: "search/primo_redirects", institution: 'NDU', tab: 'nd_campus'
      )
    end

    it "has a onesearch route" do
      expect({ :get => "/utilities/search/onesearch" }).to route_to(
        action: "index", controller: "search/primo_redirects", institution: 'NDU', tab: 'onesearch'
      )
    end

    it "has a ebooks route" do
      expect({ :get => "/utilities/search/ebooks" }).to route_to(
        action: "index", controller: "search/primo_redirects", institution: 'NDU', tab: 'ebooks'
      )
    end

    it "has a NDU route" do
      expect({ :get => "/utilities/search/ndu/testtab" }).to route_to(
        action: "index", controller: "search/primo_redirects", institution: 'NDU', tab: 'testtab'
      )
    end

    it "has a BCI route" do
      expect({ :get => "/utilities/search/bci/testtab" }).to route_to(
        action: "index", controller: "search/primo_redirects", institution: 'BCI', tab: 'testtab'
      )
    end

    it "has a HCC route" do
      expect({ :get => "/utilities/search/hcc/testtab" }).to route_to(
        action: "index", controller: "search/primo_redirects", institution: 'HCC', tab: 'testtab'
      )
    end

    it "has a SMC route" do
      expect({ :get => "/utilities/search/smc/testtab" }).to route_to(
        action: "index", controller: "search/primo_redirects", institution: 'SMC', tab: 'testtab'
      )
    end

  end

end
