cask "noden" do
  version "2.0"
  sha256 "ef371fc57e027e158298cb1d44fe49751a51918d3c2f3999706944c7a6628caf"

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
