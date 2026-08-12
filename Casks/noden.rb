cask "noden" do
  version "1.3.2"
  sha256 "deb59a15f4bec8c140c7bd3ad55b81cc6f9bd8eb166eb0ef838dc9d5545f2ef4"

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
