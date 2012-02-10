class CreateInitialSelectorAdmins < ActiveRecord::Migration
  def up
    ["ljenny","jkennel"].each do |netid|
      selector = Selector.find_or_create_by_netid(netid)
      selector.update_attributes!(:admin => true)
    end
  end

  def down
  end
end
