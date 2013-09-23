class Cataloging::OriginalCataloging < Cataloging::Entry
	
        validates_numericality_of :titles_count
        validates_numericality_of :volumes_count

end
