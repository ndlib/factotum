class Selector < ActiveRecord::Base
  belongs_to :user, :foreign_key => :netid, :primary_key => :username
  has_many :selector_funds, :foreign_key => :netid, :primary_key => :netid
  has_many :monographic_orders, :foreign_key => :selector_netid, :primary_key => :netid

  NETID_REGEXP = /\A[a-z0-9]+\Z/

  validates :netid,
            :presence => true,
            :uniqueness => true,
            :format => { :with => NETID_REGEXP}

  before_validation :clean_netid

  after_save :save_funds
  after_save :ensure_user_exists

  delegate :to_s, :name, :email, :to => :user

  def last_first
    if user.present?
      user.last_first
    else
      netid
    end
  end

  def self.default_order
    self.includes(:user).order("#{User.table_name}.last_name, #{User.table_name}.first_name, netid")
  end

  def self.monographic
    where(:monographic => true).includes(:user)
  end

  def self.just_say_yes
    where(:just_say_yes => true).includes(:user)
  end

  def funds_text
    self.selector_funds.order(:name).collect{|f| f.name}.join("\n")
  end

  def funds_text=(value)
    @funds_text = value
  end

  def funds_json
    self.selector_funds.order(:name).collect{|f| f.name}.to_json
  end

  def currencies
    monographic_orders.select('price_code, COUNT(price_code) AS currency_count').order('currency_count DESC').collect{|c| c.price_code}
  end

  private

    def save_funds
      if !@funds_text.nil?
        existing_funds = self.selector_funds.all
        fund_names = @funds_text.to_s.split("\n").collect{|f| f.strip.upcase}
        fund_names.delete("")
        fund_names.uniq!
        if fund_names.blank?
          funds_to_remove = self.selector_funds
        else
          funds_to_remove = self.selector_funds.where("name NOT IN (#{(['?'] * fund_names.count).join(',')})", *fund_names)
        end

        fund_names.each do |fund_name|
          if !self.selector_funds.where(:name => fund_name).first
            fund = self.selector_funds.build(:name => fund_name)
            fund.save!
          end
        end
        funds_to_remove.each do |fund|
          fund.destroy
        end
      end
    end

    def ensure_user_exists
      if self.user.blank?
        self.user = User.create(:username => self.netid)
      end
    end

    def clean_netid
      self.netid = self.netid.to_s.strip.downcase
    end
end
