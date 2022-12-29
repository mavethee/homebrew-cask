cask "universal-gcode-platform" do
  version "2.0.13"
  sha256 "7335d068c9b1be6f2e70fca49a8dbfc5b3ef7c030c7aace24b85c55437ee6263"

  url "https://github.com/winder/Universal-G-Code-Sender/releases/download/v#{version}/ios-ugs-platform-app-#{version}.dmg",
      verified: "github.com/winder/Universal-G-Code-Sender/"
  name "Universal G-code Sender (Platform version)"
  desc "G-code sender for CNC (compatible with GRBL, TinyG, g2core and Smoothieware)"
  homepage "https://winder.github.io/ugs_website/"

  livecheck do
    url "https://github.com/winder/Universal-G-Code-Sender"
    strategy :github_latest
  end

  app "Universal Gcode Platform.app"

  zap trash: [
    "~/Library/Application Support/ugsplatform",
    "~/Library/Preferences/ugs",
  ]

  caveats <<~EOS
    According to https://github.com/winder/Universal-G-Code-Sender/issues/1351#issuecomment-579110056
    the UGS developers do not sign their code and this app might need manual changes.
  EOS
end
