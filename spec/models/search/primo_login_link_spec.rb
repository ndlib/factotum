require 'rails_helper'

describe Search::PrimoLoginLink do
  subject { described_class }

  it "returns the correct url for the ndu vid" do
    url = "http://onesearch.library.nd.edu/primo_library/libweb/action/login.do?loginFn=signin&vid=NDU&targetURL=http%3a%2f%2fonesearch.library.nd.edu%3a80%2fprimo_library%2flibweb%2faction%2fmyAccountMenu.do%3fdscnt%3d0%26amp%3bdstmp%3d1460383948129%26amp%3bvid%3dNDU%26amp%3binitializeIndex%3dtrue"
    expect(subject.new("ndu").url).to eq(url)
  end

  it "returns the correct url for the smc vid" do
    url = "http://onesearch.library.nd.edu/primo_library/libweb/action/login.do?loginFn=signin&vid=SMC&targetURL=http%3a%2f%2fonesearch.library.nd.edu%3a80%2fprimo_library%2flibweb%2faction%2fmyAccountMenu.do%3fdscnt%3d0%26amp%3bdstmp%3d1460383948129%26amp%3bvid%3dSMC%26amp%3binitializeIndex%3dtrue"
    expect(subject.new("smc").url).to eq(url)
  end

  it "returns the correct url for the bci vid" do
    url = "http://onesearch.library.nd.edu/primo_library/libweb/action/login.do?loginFn=signin&vid=BCI&targetURL=http%3a%2f%2fonesearch.library.nd.edu%3a80%2fprimo_library%2flibweb%2faction%2fmyAccountMenu.do%3fdscnt%3d0%26amp%3bdstmp%3d1460383948129%26amp%3bvid%3dBCI%26amp%3binitializeIndex%3dtrue"
    expect(subject.new("bci").url).to eq(url)
  end

  it "returns the correct url for the hcc vid" do
    url = "http://onesearch.library.nd.edu/primo_library/libweb/action/login.do?loginFn=signin&vid=HCC&targetURL=http%3a%2f%2fonesearch.library.nd.edu%3a80%2fprimo_library%2flibweb%2faction%2fmyAccountMenu.do%3fdscnt%3d0%26amp%3bdstmp%3d1460383948129%26amp%3bvid%3dHCC%26amp%3binitializeIndex%3dtrue"
    expect(subject.new("hcc").url).to eq(url)
  end

  it "upcases the vid" do
    vid = "ndu"
    expect(vid).to receive(:upcase).and_return("NDU")
    subject.new(vid).url
  end

  it "replaces the vid into the link" do
    base_link = "base_link"
    expect_any_instance_of(described_class).to receive(:base_link).and_return(base_link)
    expect(base_link).to receive(:gsub).with("#VID", "NDU").and_return("link")
    subject.new("ndu").url
  end
end
