cask "noden" do
  version "2.4"
  sha256 "0eab3780abbf6fa910b6e34b6c129ab5172007168b7d9b1db142a8ac5b97888e"

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
