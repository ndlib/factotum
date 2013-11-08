class Directory::Employee

  before_validation :clean_netid


  NETID_REGEXP = /^[a-z0-9]+$/

  validates :netid,
            :presence => true,
            :uniqueness => true,
            :format => { :with => NETID_REGEXP}


  def self.sorted
    self.order(:last_name, :first_name)
  end

  def to_s
    display_name.to_s
  end

  def display_name
    "#{last_name}, #{first_name}"
  end



  private
    def clean_netid
      self.netid = self.netid.to_s.strip.downcase
    end



end
