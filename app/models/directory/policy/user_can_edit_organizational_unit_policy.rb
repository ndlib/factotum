
class UserCanEditOrganizationalUnitPolicy

  def initialize(directory_user, organizational_unit)
    @directory_user = directory_user
    @organizational_unit = organizational_unit
  end

  def can_edit?
  	head_of_organizational_unit? || supervises_head_of_organizational_unit?
  end	

  def head_of_organizational_unit?
  	@organizational_unit.heads.select { |head| head.netid == @directory_user.username }.present?
  end


  def supervises_head_of_organizational_unit?

    @organizational_unit.heads.select { |head| 
      head.principles.select { |principle| principle.netid == @directory_user.username }
    }.present?
    
  end



end


