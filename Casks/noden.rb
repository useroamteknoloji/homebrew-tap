cask "noden" do
  version "2.1"
  sha256 "39bbdfc4680d38401021f9416b8280dc4980960bc9bcd33cde5cf98774a92a6c"

  url "https://nodenapp.com/downloads/Noden-#{version}.dmg"
  name "Noden"
  desc "Native SSH, SFTP and RDP client with an AI command assistant"
  homepage "https://nodenapp.com/"

  livecheck do
    url "https://nodenapp.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: :ventura

  app "Noden.app"
end
