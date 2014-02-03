class Cataloging::Transfer < Cataloging::Entry

	validates :transfer_type_id, presence: true 
    validates_numericality_of :pieces_count

    belongs_to :transfer_type, :class_name => Cataloging::TransferType, :foreign_key => "transfer_type_id"

    attr_accessor :transfer_type_attributes

    before_validation :set_transfer_type_id






  private

  def set_transfer_type_id

  	tt = Cataloging::TransferType.where(transfer_type_attributes).first_or_create(transfer_type_attributes)
  	self.transfer_type_id = tt.id
  	
  end


end
