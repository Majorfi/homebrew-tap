cask "findich" do
  version "1.3.0"
  sha256 "23128a19d3543ecb6cf689969e577d83fa1860618e1a1f3de451b14630098061"

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
