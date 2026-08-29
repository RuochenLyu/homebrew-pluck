class Pluck < Formula
  desc "Remove image backgrounds offline, on-device (CLI)"
  homepage "https://pluck.aix4u.com/"
  url "https://github.com/RuochenLyu/pluck/releases/download/v1.0.2/pluck-cli-1.0.2-macos-arm64.zip"
  sha256 "cb616b7ecdab2effd077913bf0cbff9051d98682197b6c40b7cdf827d323bc09"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pluck", "Pluck_PluckCLI.bundle"
  end

  test do
    assert_match '"id":"vision"', shell_output("#{bin}/pluck models list --json")
  end
end
