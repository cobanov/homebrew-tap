cask "ghbar" do
  version "0.1.1"
  sha256 "31a29330e253d202470d4af133255bffdfa7d1f35d619f2c9d8c33a480f55d43"

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
