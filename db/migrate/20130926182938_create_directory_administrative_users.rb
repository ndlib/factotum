class CreateDirectoryAdministrativeUsers < ActiveRecord::Migration
  def change
    create_table :directory_administrative_users do |t|
      ## CAS Authenticatable
      t.string :username
      
      t.timestamps
    end
  end
end
