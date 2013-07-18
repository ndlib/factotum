class Cataloging::Transfer < Cataloging::Entry

	validates :transfer_type_id, presence: true 
    validates_numericality_of :piece_count, greater_than_or_equal_to: 0	


end
