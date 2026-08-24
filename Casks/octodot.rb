cask "octodot" do
  version "0.5.10"
  sha256 "62c39c3ced84dd97e29e8a351bf380c627774bf1844042f67e0437d7f5ff0925"

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
