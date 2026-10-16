cask "niimbar" do
  version "0.1.0"
  sha256 "119abb5cd41482294907710ec367c6096e63425893093bd27339758e80862521"

  url "https://github.com/cobanov/niimbar/releases/download/v#{version}/NiimBar-#{version}.dmg"
  name "NiimBar"
  desc "NIIMBOT B1 label printer in the menu bar"
  homepage "https://github.com/cobanov/niimbar"

  depends_on macos: :sonoma

  app "NiimBar.app"

  zap trash: "~/Library/Preferences/dev.cobanov.niimbar.plist"
end
