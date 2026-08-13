cask "noden" do
  version "1.3.5"
  sha256 "41a8990c8183fed75ecdafab55b694a5b968ff196bfc9435ce39f5f5b7ba9036"

  url "https://noden.useroamteknoloji.com/downloads/Noden-#{version}.dmg"
  name "Noden"
  desc "Native SSH, SFTP and RDP client with an AI command assistant"
  homepage "https://noden.useroamteknoloji.com/"

  livecheck do
    url "https://noden.useroamteknoloji.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: :ventura

  app "Noden.app"
end
