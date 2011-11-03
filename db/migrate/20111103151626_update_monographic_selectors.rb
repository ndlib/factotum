class UpdateMonographicSelectors < ActiveRecord::Migration
  def up
    execute "UPDATE selectors SET monographic = 1, just_say_yes = 1"
  end

  def down
  end
end
