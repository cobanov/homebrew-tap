cask "heyclaude" do
  version "0.2.0"
  sha256 "537668abdbbe0aafe37f2f0895415caf21ced2d85668bc3a5e5220288e9f0f40"

  url "https://heyclaude.cobanov.dev/downloads/HeyClaude-#{version}.dmg"
  name "HeyClaude"
  desc "Talk to Claude Code from the notch"
  homepage "https://heyclaude.cobanov.dev/"

  livecheck do
    url "https://heyclaude.cobanov.dev/download"
    strategy :header_match
  end

  depends_on macos: :tahoe

  app "HeyClaude.app"

  zap trash: "~/Library/Preferences/dev.cobanov.heyclaude.plist"
end
