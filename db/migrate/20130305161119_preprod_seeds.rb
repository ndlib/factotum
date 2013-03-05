class PreprodSeeds < ActiveRecord::Migration
  def up
    [ [ "Hesburgh", 'hesburgh'] ,
  [ "Engineering", 'engineering'],
  [ "Architecture", 'architecture'], 
  [ "Life Sciences", 'life_sciences'], 
  [ "Chemistry and Physics", 'chemistry_and_physics'], 
  [ "Kellog/Kroc Information Center", 'kellog_kroc'], 
  [ "Business Information Center", 'bic'], 
  [ "Mathematics", 'math'], 
  [ "Radiation Laboratory", 'radiation'], 
  [ "None", 'none']].each do | lib |
  Building.create!(:name => lib[0], :search_code => lib[1])

  end

  def down
    Building.delete_all
  end
end
