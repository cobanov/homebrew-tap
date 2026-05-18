cask "autocut" do
  version "0.2.0"
  sha256 "148a22bf5e9bd23c5810442d92dd8092cb024bb348c593921633255002d19933"

  url "https://github.com/cobanov/autocut/releases/download/v#{version}/autocut_#{version}_aarch64.dmg"
  name "autocut"
  desc "Remove silent gaps from videos with silero VAD"
  homepage "https://github.com/cobanov/autocut"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "autocut.app"

  zap trash: [
    "~/Library/Preferences/dev.cobanov.autocut.plist",
    "~/Library/WebKit/dev.cobanov.autocut",
    "~/Library/Caches/dev.cobanov.autocut",
    "~/Library/Application Support/dev.cobanov.autocut",
  ]
end
