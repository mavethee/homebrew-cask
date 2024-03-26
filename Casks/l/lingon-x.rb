cask "lingon-x" do
  on_high_sierra :or_older do
    version "6.6.5"
    sha256 "b0231b1a98dcc8f5c4234b419c9f5331407b8cce29b33f0ea2e32b12595adfa8"
  end
  on_mojave do
    version "8.4.9"
    sha256 "c1c839e8dc13bd295f2080980c5bea22299c33f3333b7c6981161b46d6f021d8"
  end
  on_catalina do
    version "8.4.9"
    sha256 "c1c839e8dc13bd295f2080980c5bea22299c33f3333b7c6981161b46d6f021d8"
  end
  on_big_sur do
    version "8.4.9"
    sha256 "c1c839e8dc13bd295f2080980c5bea22299c33f3333b7c6981161b46d6f021d8"
  end
  on_monterey :or_newer do
    version "9.4.7"
    sha256 "1043d2fc364674978dbf3ab297ee85d5aa71eb11d600f9bcbb49846fc3e696cb"
  end

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  name "Lingon X"
  desc "Automator software to start apps, run scripts or commands and more"
  homepage "https://www.peterborgapps.com/lingon/"

  livecheck do
    url "https://www.peterborgapps.com/updates/lingonx#{version.major}.plist"
    regex(%r{<key>version</key>\s*\n\s*<string>(\d+(?:\.\d+)+)</string>}i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Lingon X.app"

  zap trash: [
    "~/Library/Application Scripts/com.peterborgapps.LingonX*",
    "~/Library/Application Support/Lingon X",
    "~/Library/Containers/com.peterborgapps.LingonX*",
  ]
end