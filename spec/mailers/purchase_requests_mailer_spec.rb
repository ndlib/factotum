require "spec_helper"

describe PurchaseRequestsMailer do
  before :each do
    @request = FactoryGirl.create(:purchase_request)
  end

  describe "#submission" do
    subject { PurchaseRequestsMailer.submission(@request) }

    it "displays the requester netid" do
      expect(subject).to have_body_text("NetID: #{@request.requester_netid}")
    end

    it "sends to the subject librarian" do
      expect(subject).to deliver_to("shayes1@nd.edu")
    end
  end

  describe "#confirmation" do
    subject { PurchaseRequestsMailer.confirmation(@request) }

    it "should display the requester netid" do
      expect(subject).to have_body_text("NetID: #{@request.requester_netid}")
    end

    it "sends to the requester" do
      expect(subject).to deliver_to(@request.requester_email)
    end
  end
end
