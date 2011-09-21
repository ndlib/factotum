class RefworksPasswordReset < ActiveRecord::Base
  serialize :login_ids
  belongs_to :user, :class_name => 'RefworksUser', :foreign_key => :refworks_user_id, :primary_key => :refworks_id
  validates_uniqueness_of :token
  validate :validate_email_or_login
  
  before_validation :set_email_or_login, :on => :create
  before_validation :create_token, :on => :create
  
  def users
    if self.login.present?
      RefworksUser.by_login(self.login)
    elsif self.email.present?
      RefworksUser.by_email(self.email)
    else
      []
    end
  end
  
  def self.available
    self.where("created_at >= ? AND used = ?", 1.days.ago(Time.now), false)
  end
  
  def self.by_token(token)
    self.where(:token => token)
  end
  
  private
    
    def validate_email_or_login
      if self.email.blank? && self.login.blank?
        self.errors.add(:email_or_login, "The information you entered did not match any Refworks accounts.")
      end
    end
    
    def create_token
      self.token = random_token()
      while !self.class.find_by_token(self.token).nil?
        self.token = random_token()
      end
      self.token
    end
    
    def random_token
      Digest::SHA1.hexdigest Time.now.to_s + rand.to_s
    end
    
    def set_email_or_login
      if self.email_or_login.present?
        self.email_or_login = self.email_or_login.downcase
        
        tmp_users = RefworksUser.by_email(self.email_or_login)
        if tmp_users.count > 0
          self.email = self.email_or_login
        else
          tmp_users = RefworksUser.by_login(self.email_or_login)
          if tmp_users.count > 0
            self.login = self.email_or_login
          end
        end
      end
      
    end
end
