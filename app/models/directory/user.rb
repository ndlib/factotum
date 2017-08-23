class Directory::User

  attr_accessor :username


  def initialize(username=nil)
    @username = username
  end


  def admin?
    ['awetheri', 'rfox2', 'jhartzle', 'fboze', 'adixon4', 'msimons', 'mstenber', 'mwolff', 'dwolfe2', 'kkoski1', 'jgarces', 'tharrier', 'hbeachey', 'jmrozinske', 'toleary2'].include?(self.username)
  end

end
