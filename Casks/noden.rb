cask "noden" do
  version "1.4.0"
  sha256 "0c5d11c948728c7c54715669b506793e9d32a2d6e3d1e5dc8490ddc55e6ec146"

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
