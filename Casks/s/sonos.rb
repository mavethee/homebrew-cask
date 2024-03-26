cask "sonos" do
  version "16.1,78.1.51030"
  sha256 "3c141f4b46b6f7372819634b89288cdb41fd425e57f17370d50da2e84e51c921"

  url "https://update-software.sonos.com/software/nvasc21FQF/Sonos_#{version.csv.second.sub(/(\d+)\.(\d+)\.(\d+)/, '\1.\2-\3')}.dmg"
  name "Sonos S2"
  desc "Control your Sonos system"
  homepage "https://www.sonos.com/"

  livecheck do
    url "https://www.sonos.com/en/redir/controller_software_mac2"
    strategy :extract_plist
  end

  auto_updates true

  app "Sonos.app"

  zap trash: "~/Library/Application Support/SonosV2"
end
