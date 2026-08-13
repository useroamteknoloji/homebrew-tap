cask "noden" do
  version "1.3.3"
  sha256 "9c7a974fc7c4071c0ea2d7473dfbcf2e3d8a05765edfd5c94e6e61e9308221a7"

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
