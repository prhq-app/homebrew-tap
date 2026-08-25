cask "prhq" do
  version "1.0.6"
  sha256 "84aac25a4c7b5c23f426f58cb65cd8c16370f56d493cb8a643bcdfb8f097cbe9"

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
