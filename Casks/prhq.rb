cask "prhq" do
  version "1.0.0"
  sha256 "2d6e7dfccd49f3b1a05288c72f8d8a6c6b8d78671653e3e4a931ff3ee995e3e0"

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
