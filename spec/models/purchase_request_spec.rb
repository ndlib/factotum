require 'rails_helper'

describe PurchaseRequest do
  describe 'factory' do
    subject { FactoryBot.build(:purchase_request) }

    it "is valid" do
      expect(subject).to be_valid
    end
  end

  [:title, :requester_netid, :requester_name, :requester_email].each do |field|
    it "requires #{field}" do
      subject.valid?
      expect(subject.errors[field].size).to eq(1)
      subject.send("#{field}=","Test")
      subject.valid?
      expect(subject.errors[field].size).to eq(0)
    end
  end

  describe '#subject' do
    it "fails on an invalid value" do
      subject.subject = "Fake Subject"
      subject.valid?
      expect(subject.errors[:subject].size).to eq(1)
    end

    it "allows a valid value" do
      subject.subject = "Accounting"
      subject.valid?
      expect(subject.errors[:subject].size).to eq(0)
    end
  end

  describe '#format' do
    it "fails on an invalid value" do
      subject.format = "Fake Format"
      subject.valid?
      expect(subject.errors[:format].size).to eq(1)
    end

    it "allows a valid value" do
      subject.format = "Book (print preferred)"
      subject.valid?
      expect(subject.errors[:format].size).to eq(0)
    end
  end

  describe '#requester_notification_preference' do
    it "fails on an invalid value" do
      subject.requester_notification_preference = "Fake Format"
      subject.valid?
      expect(subject.errors[:requester_notification_preference].size).to eq(1)
    end

    it "allows a valid value" do
      subject.requester_notification_preference = "Email"
      subject.valid?
      expect(subject.errors[:requester_notification_preference].size).to eq(0)
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
      expect(subject.subject_email).to be == "bpietras@nd.edu"
    end
  end
end
