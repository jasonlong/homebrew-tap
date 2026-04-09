cask "octodot" do
  version "0.4.7"
  sha256 "34e6a42c1328fb731b614a86dfa0c8c32130c6190267260fa0d3637235386eea"

  url "https://github.com/jasonlong/octodot/releases/download/v#{version}/Octodot-v#{version}-macos.zip"
  name "Octodot"
  desc "GitHub notifications in the macOS menu bar"
  homepage "https://github.com/jasonlong/octodot"

  depends_on macos: ">= :ventura"

  preflight do
    system_command "/usr/bin/xattr",
      args: ["-cr", "#{staged_path}/Octodot.app"]
  end

  app "Octodot.app"

  zap trash: [
    "~/Library/Application Support/Octodot",
    "~/Library/Preferences/com.octodot.app.plist",
  ]
end
