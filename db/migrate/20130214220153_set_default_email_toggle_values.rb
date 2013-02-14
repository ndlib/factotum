class SetDefaultEmailToggleValues < ActiveRecord::Migration
  def up
    User.update_all(receive_order_emails: true)
  end

  def down
  end

  class User < ActiveRecord::Base
  end
end
