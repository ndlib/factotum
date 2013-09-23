class Cataloging::CopyCataloging < Cataloging::Entry
	
    validates_numericality_of :titles_count, :message => "must be a number"
    validates_numericality_of :volumes_count, :message => "must be a number"

end
