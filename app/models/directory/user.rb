class Directory::User

  attr_accessor :username


  def initialize(username)
    @username = username
  end


  def admin?
    ['rmalott', 'rfox2', 'jhartzle', 'fboze'].include?(self.username)
  end



end

