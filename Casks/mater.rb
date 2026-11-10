cask "mater" do
  version "3.0.2"
  sha256 "59b0f6c5a6c9cb276deecc63a3ea3abaeaa17fea4304e76443a6cdf306bac4b9"

  url "https://github.com/jasonlong/mater/releases/download/v#{version}/Mater-v#{version}-macos.zip"
  name "Mater"
  desc "Pomodoro timer in the macOS menu bar"
  homepage "https://github.com/jasonlong/mater"

  depends_on macos: :sonoma

  app "Mater.app"

  zap trash: [
    "~/Library/Preferences/me.jasonlong.mater.plist",
  ]
end
