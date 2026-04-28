cask "octodot" do
  version "0.5.1"
  sha256 "5b2f9ac2104a974d4344c1a84775aa14f71d372da148db110b4b698fbc711716"

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
