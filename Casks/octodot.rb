cask "octodot" do
  version "0.4.5"
  sha256 "42d5fda6f5b536ec438f623caf342e9a7ec40d2570b7a35e4c01dcc9f6c86b1f"

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
