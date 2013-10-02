require 'spec_helper'

describe PurchaseRequest do
  describe 'factory' do
    subject { FactoryGirl.build(:purchase_request) }

    it "is valid" do
      expect(subject).to be_valid
    end
  end

  [:title, :requester_netid, :requester_name, :requester_email].each do |field|
    it "requires #{field}" do
      expect(subject).to have(1).error_on(field)
      subject.send("#{field}=","Test")
      expect(subject).to have(0).errors_on(field)
    end
  end

  describe '#subject' do
    it "fails on an invalid value" do
      subject.subject = "Fake Subject"
      expect(subject).to have(1).error_on(:subject)
    end

    it "allows a valid value" do
      subject.subject = "Accounting"
      expect(subject).to have(0).errors_on(:subject)
    end
  end

  describe '#format' do
    it "fails on an invalid value" do
      subject.format = "Fake Format"
      expect(subject).to have(1).error_on(:format)
    end

    it "allows a valid value" do
      subject.format = "Book"
      expect(subject).to have(0).errors_on(:format)
    end
  end

  describe '#requester_notification_preference' do
    it "fails on an invalid value" do
      subject.requester_notification_preference = "Fake Format"
      expect(subject).to have(1).error_on(:requester_notification_preference)
    end

    it "allows a valid value" do
      subject.requester_notification_preference = "Email"
      expect(subject).to have(0).errors_on(:requester_notification_preference)
    end
  end

  describe '#subject_email' do
    it "returns nil with no subject" do
      subject.subject = nil
      expect(subject.subject_email).to be_nil
    end

    it "returns nil with an invalid subject" do
      subject.subject = "Fake Subject"
      expect(subject.subject_email).to be_nil
    end

    it "returns an email address with a valid subject" do
      subject.subject = "Accounting"
      expect(subject.subject_email).to be == "shayes1@nd.edu"
    end
  end
end
