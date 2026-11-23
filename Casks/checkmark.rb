cask "checkmark" do
  version "1.0.0,6"
  sha256 "3db3aac398dbc6b491ff436ea3ea38e3d6f07fef6244bea977a33f5267e23b61"

  url "https://checkmark.cobanov.dev/dl/checkmark-#{version.csv.first}-#{version.csv.second}.dmg"
  name "checkmark"
  desc "To-do list: write it, do it, check it"
  homepage "https://checkmark.cobanov.dev/"

  depends_on macos: :tahoe

  app "checkmark.app"

  zap trash: [
    "~/Library/Containers/dev.cobanov.checkmark",
    "~/Library/Application Scripts/dev.cobanov.checkmark",
  ]
end
