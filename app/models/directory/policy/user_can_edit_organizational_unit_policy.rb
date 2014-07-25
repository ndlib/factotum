
class UserCanEditOrganizationalUnitPolicy

  def initialize(current_user, organizational_unit)
    @current_user = current_user
    @organizational_unit = organizational_unit
  end

  def can_edit?
  	head_of_organizational_unit? || supervises_head_of_organizational_unit?
  end	

  def head_of_organizational_unit?
  	@organizational_unit.heads.select { |head| head.netid == @current_user.username }.present?
  end


  def supervises_head_of_organizational_unit?

    @organizational_unit.heads.select { |head| 
      head.principles.select { |principle| principle.netid == @current_user.username }.present?
    }

    
  end



end


