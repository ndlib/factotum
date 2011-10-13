class Selector < ActiveRecord::Base
  belongs_to :user, :foreign_key => :username, :primary_key => :netid
  
  validates_uniqueness_of :netid
  
  after_save :ensure_user_exists
  
  private
    def ensure_user_exists
      if self.user.blank?
        User.create(:username => self.netid)
      end
    end
end
