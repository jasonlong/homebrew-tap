cask "octodot" do
  version "0.5.13"
  sha256 "b8ea1038f365fbcd7b3fd64d02162593a38068b891763982c1e2cc22c0dd3a88"

  url "https://github.com/jasonlong/octodot/releases/download/v#{version}/Octodot-v#{version}-macos.zip"
  name "Octodot"
  desc "GitHub notifications in the macOS menu bar"
  homepage "https://github.com/jasonlong/octodot"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Octodot.app"

  zap trash: [
    "~/Library/Application Support/Octodot",
    "~/Library/Preferences/com.octodot.app.plist",
  ]
end
