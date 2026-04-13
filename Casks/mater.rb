cask "mater" do
  version "3.0.0-beta.2"
  sha256 "PLACEHOLDER"

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
