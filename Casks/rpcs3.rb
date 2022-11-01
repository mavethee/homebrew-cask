cask "rpcs3" do
  version "472426381184fafa98d4381aca444bee12f64"
  sha256 :no_check

  url "https://github.com/RPCS3/rpcs3-binaries-mac/releases/download/build-3cb9cd7724929d1e4bc0ff030a34579aae74473e/rpcs3-v0.0.24-14357-3cb9cd77_macos.dmg",
        verified: "github.com/RPCS3/rpcs3-binaries-mac/"
  name "RPCS3"
  desc "Open-source PlayStation 3 Emulator"
  homepage "https://rpcs3.net/"

  app "RPCS3.app"

  zap trash: [
    "~/Library/Application Support/rpcs3",
    "~/Library/Caches/rpcs3",
  ]
end
