class Cataloging::VolumeAdd < Cataloging::Entry

        validates_numericality_of :volume_count, greater_than_or_equal_to: 0	




end
