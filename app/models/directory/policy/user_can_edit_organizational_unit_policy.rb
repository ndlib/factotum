
class UserCanEditOrganizationalUnitPolicy

  def initialize(directory_user, organizational_unit)
    @directory_user = directory_user
    @organizational_unit = organizational_unit
  end


  def can_edit?
  	head_of_organizational_unit? || supervises_head_of_organizational_unit?
  end	


  def head_of_organizational_unit?
    
    if @organizational_unit.class.name == 'DirectoryDepartment'
      @organizational_unit.self_and_parents.select { |pd| 
        pd.heads.select { |head| head.netid == @directory_user.username }.present?
      }.present?
    else
      @organizational_unit.heads.select { |head| head.netid == @directory_user.username }.present?
    end

  end


  def supervises_head_of_organizational_unit?

    @organizational_unit.heads.select { |head| 
      head.principles.select { |principle| principle.netid == @directory_user.username }.present?
    }.present?
    
  end



end


