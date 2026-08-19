cask "ghbar" do
  version "0.1.0"
  sha256 "d32fb15df07d45aeb90d1fbd3943b19b8cd6fcf95ef22d84e14342cd8e787430"

  url "https://github.com/cobanov/ghbar/releases/download/v#{version}/GHBar-#{version}-macos.zip"
  name "GHBar"
  desc "Pull requests and issues from your repositories, in the menu bar"
  homepage "https://ghbar.cobanov.dev"

  depends_on macos: :sonoma

  app "GHBar.app"

  zap trash: [
    "~/Library/Application Support/GHBar",
    "~/Library/Preferences/run.cobanov.ghbar.plist",
  ]
end
