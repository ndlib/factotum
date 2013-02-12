class RenamePostpendToAppend < ActiveRecord::Migration
  def up
  	rename_column :hours, :postpend_text, :append_text
  end

  def down
  	rename_column :hours, :append_text, :postpend_text
  end
end
