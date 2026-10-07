cask "noden" do
  version "2.3"
  sha256 "e442ffe8f921ecbbe37ba9939e2934b5633ef42b40a8120b64aa28202f4943fc"

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
