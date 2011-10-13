class Selector < ActiveRecord::Base
  belongs_to :user, :foreign_key => :netid, :primary_key => :username
  
  validates_uniqueness_of :netid
  
  after_save :ensure_user_exists
  
  delegate :to_s, :name, :email, :last_first, :to => :user
  
  private
    def ensure_user_exists
      if self.user.blank?
        User.create(:username => self.netid)
      end
    end
end
