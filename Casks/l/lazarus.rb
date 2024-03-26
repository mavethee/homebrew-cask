cask "lazarus" do
  version "3.2"
  sha256 "c84a2ee58d791613a03cb3de119fb92c2dd14a2686b44cf342580376b950a5b1"

  url "https://downloads.sourceforge.net/lazarus/Lazarus%20macOS%20x86-64/Lazarus%20#{version}/Lazarus-#{version}-macosx-x86_64.pkg",
      verified: "sourceforge.net/lazarus/"
  name "Lazarus"
  desc "IDE for rapid application development"
  homepage "https://www.lazarus-ide.org/"

  livecheck do
    url :homepage
    regex(%r{href=.*?macOS%20x86-64/Lazarus%20v?(\d+(?:\.\d+)+)/}i)
  end

  depends_on cask: "fpc-laz"
  depends_on cask: "fpc-src-laz"

  pkg "Lazarus-#{version}-macosx-x86_64.pkg"

  uninstall pkgutil: [
              "org.freepascal.pkg.fpcsrc-320-laz",
              "org.lazarus-ide.pkg.LazarusIDE",
            ],
            delete:  "/Applications/Lazarus.app"

  zap trash: "~/.lazarus"
end