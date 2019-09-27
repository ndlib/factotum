FactoryBot.define do
  factory :acquisition_order_attachment, class: AcquisitionOrderAttachment do
    attachment { File.new(Rails.root + 'spec/factories/files/help.png') }
  end
  factory :acquisition_order_attachment_2, class: AcquisitionOrderAttachment do
    attachment { File.new(Rails.root + 'spec/factories/files/print.png') }
  end
end