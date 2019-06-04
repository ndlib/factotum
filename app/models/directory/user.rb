class Directory::User

  attr_accessor :username


  def initialize(username=nil)
    @username = username
  end


  def admin?
    ['awetheri', 'rfox2', 'jhartzle', 'fboze', 'lajamie', 'mharden', 'adixon4', 'msimons', 'mstenber', 'mwolff', 'dwolfe2', 'kkoski1', 'jgarces', 'tharrier', 'jbilins1', 'toleary2'].include?(self.username)
  end

end
