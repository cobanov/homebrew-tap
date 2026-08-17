cask "autocut" do
  version "0.5.0"
  sha256 "776382c5563762c4a43789227edda3136d36d2dc0d40a5ddd410dbe5cb590de3"

  url "https://github.com/cobanov/autocut/releases/download/v#{version}/autocut_#{version}_aarch64.dmg"
  name "autocut"
  desc "Remove silent gaps from videos with silero VAD"
  homepage "https://github.com/cobanov/autocut"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "autocut.app"

  zap trash: [
    "~/Library/Preferences/dev.cobanov.autocut.plist",
    "~/Library/WebKit/dev.cobanov.autocut",
    "~/Library/Caches/dev.cobanov.autocut",
    "~/Library/Application Support/dev.cobanov.autocut",
  ]
end
