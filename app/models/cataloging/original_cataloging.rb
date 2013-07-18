class Cataloging::OriginalCataloging < Cataloging::Entry
	
        validates_numericality_of :title_count, greater_than_or_equal_to: 0
        validates_numericality_of :volume_count, greater_than_or_equal_to: 0

end
