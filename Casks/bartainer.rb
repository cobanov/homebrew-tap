cask "bartainer" do
  version "0.2.3"
  sha256 "7dc667b4f7e104274a547ee2cacaac03eee456801771b71fa8d01712cff90527"

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
