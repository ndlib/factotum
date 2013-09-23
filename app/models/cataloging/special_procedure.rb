class Cataloging::SpecialProcedure < Cataloging::Entry

	validates :special_procedure_type_id, presence: true 
    validates_numericality_of :pieces_count

end
