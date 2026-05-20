cask "autocut" do
  version "0.4.3"
  sha256 "6f7741d82cb7671f53a03bd21821d9c6360a2da9e679e7e4882679656c2ee9e1"

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
