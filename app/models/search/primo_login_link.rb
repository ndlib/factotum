class Search::PrimoLoginLink
  attr_reader :vid

  def initialize(vid)
    @vid = vid
  end

  def url
    base_link.gsub("#VID", vid.upcase)
  end

  private

  def base_link
    "http://onesearch.library.nd.edu/primo_library/libweb/action/login.do?loginFn=signin&vid=#VID&targetURL=http%3a%2f%2fonesearch.library.nd.edu%3a80%2fprimo_library%2flibweb%2faction%2fmyAccountMenu.do%3fdscnt%3d0%26amp%3bdstmp%3d1460383948129%26amp%3bvid%3d#VID%26amp%3binitializeIndex%3dtrue"
  end
end
