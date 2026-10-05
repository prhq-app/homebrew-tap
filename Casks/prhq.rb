cask "prhq" do
  version "1.1.2"
  sha256 "5d5ebc79ddd208be1efba3e50260f2fef3b5a988c2e97c40642f6f37eff4b541"

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
