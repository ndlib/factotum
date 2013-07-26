class Cataloging::CopyCataloging < Cataloging::Entry
	
    validates_numericality_of :titles_count, greater_than_or_equal_to: 0	
    validates_numericality_of :volumes_count, greater_than_or_equal_to: 0		

end
