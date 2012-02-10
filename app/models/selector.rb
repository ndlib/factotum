class Selector < ActiveRecord::Base
  belongs_to :user, :foreign_key => :netid, :primary_key => :username
  has_many :selector_funds, :foreign_key => :netid, :primary_key => :netid
  
  validates_uniqueness_of :netid
  
  after_save :save_funds
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
  
  def funds_text
    self.selector_funds.order(:name).collect{|f| f.name}.join("\n")
  end
  
  def funds_text=(value)
    @funds_text = value
  end
  
  private
    
    def save_funds
      if !@funds_text.nil?
        existing_funds = self.selector_funds.all
        fund_names = @funds_text.to_s.split("\n").collect{|f| f.strip.upcase}
        fund_names.delete("")
        funds_to_remove = self.selector_funds.where("name NOT IN (#{(['?'] * fund_names.count).join(',')})", *fund_names)
        fund_names.each do |fund_name|
          if !self.selector_funds.where(:name => fund_name).first
            self.selector_funds.create(:name => fund_name)
          end
        end
        funds_to_remove.each do |fund|
          fund.destroy
        end
      end
    end
    
    def ensure_user_exists
      if self.user.blank?
        User.create(:username => self.netid)
      end
    end
end
