cask "autocut" do
  version "0.4.0"
  sha256 "00ad62b41c5f11c850ec31ace63a4441afc3b74e802f883b04d14cab04d2f5e1"

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
