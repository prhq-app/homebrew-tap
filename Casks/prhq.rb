cask "prhq" do
  version "1.0.10"
  sha256 "54f9a8ac1f18a8536e22725c3da1c3fb46530d871de654eddbcb532b0e1fb143"

  url "https://github.com/prhq-app/releases/releases/download/v#{version}/PRHQ-#{version}.dmg"
  name "PRHQ"
  desc "Real-time GitHub pull request and CI notifications through a floating notch"
  homepage "https://prhq.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "PRHQ.app"

  zap trash: [
    "~/Library/Caches/app.prhq.macos",
    "~/Library/HTTPStorages/app.prhq.macos",
    "~/Library/Preferences/app.prhq.macos.plist",
    "~/Library/Saved Application State/app.prhq.macos.savedState",
    "~/Library/WebKit/app.prhq.macos",
  ]
end
