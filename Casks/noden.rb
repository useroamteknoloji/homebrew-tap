cask "noden" do
  version "1.1.4"
  sha256 "88b5aa5a3ed84736f3203ba6d1875c0e9fc92e925a5bb3459b88f3a0c45ed4ce"

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
