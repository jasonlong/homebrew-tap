cask "mater" do
  version "3.0.0"
  sha256 "903b7c290e71fb21366a0971bf33c545eeedf2fcca708980151ff8b93d9fe29e"

  url "https://github.com/jasonlong/mater/releases/download/v#{version}/Mater-v#{version}-macos.zip"
  name "Mater"
  desc "Pomodoro timer in the macOS menu bar"
  homepage "https://github.com/jasonlong/mater"

  depends_on macos: ">= :sonoma"

  app "Mater.app"

  zap trash: [
    "~/Library/Preferences/me.jasonlong.mater.plist",
  ]
end
