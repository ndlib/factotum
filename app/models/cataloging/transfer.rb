class Cataloging::Transfer < Cataloging::Entry

	validates :transfer_type_id, presence: true 
    validates_numericality_of :pieces_count


end
