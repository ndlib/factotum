class CreateDirectoryEmployees < ActiveRecord::Migration
  def change
    create_table :directory_employees do |t|

      t.string :first_name
      t.string :last_name
      t.string :netid
      t.string :photo
      t.string :rank
      t.boolean :selector, :default => false

      t.timestamps
    end
  end
end
