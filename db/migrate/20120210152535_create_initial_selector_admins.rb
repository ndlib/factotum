class CreateInitialSelectorAdmins < ActiveRecord::Migration
  def up
    # Removed initial selector admins migration and moved it to seeds.rb
    # ["ljenny","jkennel"].each do |netid|
    #   selector = Selector.find_or_create_by_netid(netid)
    #   selector.update_attributes!(:admin => true)
    # end
  end

  def down
  end
end
