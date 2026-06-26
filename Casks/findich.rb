cask "findich" do
  version "1.4.0"
  sha256 "6022f7e07683cbc962263f0ff9ff9bd06e75cd9cc2715218004df386ad4b90ff"

  url "https://github.com/Majorfi/immich-in-finder/releases/download/v#{version}/Findich.dmg",
      verified: "github.com/Majorfi/immich-in-finder/"
  name "Findich"
  desc "Browse a self-hosted Immich photo library as native Finder folders"
  homepage "https://findich.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Findich.app"

  uninstall quit: "app.quub.immichdrive"

  zap trash: [
    "~/Library/Containers/app.quub.immichdrive",
    "~/Library/Containers/app.quub.immichdrive.FileProvider",
    "~/Library/Group Containers/QZSF4W9PK3.app.quub.immichdrive",
    "~/Library/Preferences/app.quub.immichdrive.plist",
  ]
end
