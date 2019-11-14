require 'rails_helper'

describe AcquisitionOrderAttachment do
  before(:each) do
    @attachment = FactoryBot.create(:acquisition_order_attachment_2) 
  end

  # Note about the run_callbacks method - this is necessary in order to force paperclip to actually delete the test files

  it "should have a valid factory" do
      expect(@attachment).to be_valid
      expect(@attachment).to be_a_kind_of AcquisitionOrderAttachment
      @attachment.destroy
      @attachment.run_callbacks(:commit)
  end

  it "should have a file name" do
      expect(@attachment.attachment_file_name).to eq("print.png")
      @attachment.destroy
      @attachment.run_callbacks(:commit)
  end

  it "should set a file size" do
      expect(@attachment.attachment_file_size).to eq("2123")
      @attachment.destroy
      @attachment.run_callbacks(:commit)
  end
  
  it "should set a content type" do
      expect(@attachment.attachment_content_type).to eq("image/png")
      @attachment.destroy
      @attachment.run_callbacks(:commit)
  end

  it "should not set an order id if an association has not been made" do
      expect(@attachment.acquisition_order).to be nil
      @attachment.destroy
      @attachment.run_callbacks(:commit)
  end
end