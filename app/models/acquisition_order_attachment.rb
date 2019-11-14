class AcquisitionOrderAttachment < ActiveRecord::Base
    belongs_to :acquisition_order
    has_attached_file :attachment, { preserve_files: false }
    do_not_validate_attachment_file_type :attachment
end