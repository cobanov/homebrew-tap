cask "bartainer" do
  version "0.2.3"
  sha256 "2a80ac5ec6df71b2900f22a215ceae4300f41489ceee70b0475feb32d6dc92bb"

  url "https://github.com/cobanov/homebrew-tap/releases/download/bartainer-v#{version}/Bartainer-#{version}-macos.zip",
      verified: "github.com/cobanov/homebrew-tap/"
  name "Bartainer"
  desc "macOS menu bar for local and remote Docker containers"
  homepage "https://github.com/cobanov/homebrew-tap"

  depends_on macos: ">= :ventura"

  app "Bartainer.app"

  zap trash: [
    "~/Library/Preferences/com.cobanov.bartainer.plist",
  ]
end
