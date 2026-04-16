cask "octodot" do
  version "0.4.9"
  sha256 "d8ef8a5d41b02eab0e8ff99c25e0502860d56b01267693a171d42472e7673509"

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
