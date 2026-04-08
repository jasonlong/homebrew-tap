cask "octodot" do
  version "0.4.4"
  sha256 "2c49c3fad392deaafcba7dec01a06ebc24d9bb8c2f90799a2921a165d8e48ab4"

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
