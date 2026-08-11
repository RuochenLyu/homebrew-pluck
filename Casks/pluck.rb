cask "pluck" do
  version "1.0.0"
  sha256 "41b0f59b6dbad07ed9dfedf1443e588c0362a1586e6f4dd8d01d12b79114f99a"

  url "https://github.com/RuochenLyu/pluck/releases/download/v#{version}/Pluck.zip"
  name "Pluck"
  desc "Remove image backgrounds offline, on-device"
  homepage "https://pluck.aix4u.com/"

  depends_on macos: ">= :tahoe"
  depends_on arch: :arm64

  app "Pluck.app"

  zap trash: [
    "~/Library/Application Support/Pluck",
    "~/Library/Preferences/com.aix4u.pluck.plist",
  ]
end
