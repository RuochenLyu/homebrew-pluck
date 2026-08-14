cask "pluck" do
  version "1.0.1"
  sha256 "1c1fe5bd2505b48d07bfa980e4e44b343da5e50530a81ef6605ec14603a3ab41"

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
