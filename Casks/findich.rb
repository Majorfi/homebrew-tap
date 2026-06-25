cask "findich" do
  version "1.2.3"
  sha256 "ebf75b30d71d4f54c566822f44073eba95730083e38bb20a38a4e63622829a53"

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
