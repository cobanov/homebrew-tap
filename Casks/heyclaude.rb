cask "heyclaude" do
  version "0.2.1"
  sha256 "39365342fb25913dacdab4a77a547cc5417969c580d99297a15c076b42a6f805"

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
