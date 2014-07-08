class Directory::User

  attr_accessor :username


  def initialize(username=nil)
    @username = username
  end


  def admin?
    ['rfox2', 'jhartzle', 'fboze', 'adixon4', 'msimons', 'mstenber', 'mwolff', 'jkennel', 'dwolfe2'].include?(self.username)
  end

end

