class RefworksPasswordReset < ActiveRecord::Base
  serialize :login_ids
  
  has_many :users, :class_name => 'RefworksCache', :foreign_key => "email", :primary_key => "email"
  
  validates_uniqueness_of :token
  
  before_create :create_token
  
  private
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
end
