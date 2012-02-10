class Selector < ActiveRecord::Base
  belongs_to :user, :foreign_key => :netid, :primary_key => :username
  has_many :selector_funds, :foreign_key => :netid, :primary_key => :netid
  
  validates_uniqueness_of :netid
  
  after_save :ensure_user_exists
  
  delegate :to_s, :name, :email, :last_first, :to => :user
  
  
  def self.monographic
    where(:monographic => true).includes(:user)
  end
  
  def self.just_say_yes
    where(:just_say_yes => true).includes(:user)
  end
  
  def self.in_order
    includes(:user).sort{|a,b| a.last_first <=> b.last_first}
  end
  
  private
    def ensure_user_exists
      if self.user.blank?
        User.create(:username => self.netid)
      end
    end
end
