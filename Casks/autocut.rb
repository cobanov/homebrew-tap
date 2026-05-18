cask "autocut" do
  version "0.3.1"
  sha256 "36d040c77da3668485d0a6005240fdd92c85159ddbd143c107f8b7a1b23907f3"

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
