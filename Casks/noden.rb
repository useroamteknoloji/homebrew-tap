cask "noden" do
  version "1.4.5"
  sha256 "8dabce9e678d115f253185cbcf6fff50428a448ca3f3fac1e76472cd2d914284"

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
