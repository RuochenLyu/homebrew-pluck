cask "pluck" do
  version "1.0.2"
  sha256 "72d59afa0acd5f30f00afd4a203e7191f6a4e362f766b682e88a37fa55f0763e"

  url "https://github.com/RuochenLyu/pluck/releases/download/v#{version}/Pluck.zip"
  name "Pluck"
  desc "Remove image backgrounds offline, on-device"
  homepage "https://pluck.aix4u.com/"

  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "Pluck.app"

  zap trash: [
    "~/Library/Application Support/Pluck",
    "~/Library/Preferences/com.aix4u.pluck.plist",
  ]
end
