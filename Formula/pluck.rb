class Pluck < Formula
  desc "Remove image backgrounds offline, on-device (CLI)"
  homepage "https://pluck.aix4u.com/"
  url "https://github.com/RuochenLyu/pluck/releases/download/v1.0.1/pluck-cli-1.0.1-macos-arm64.zip"
  version "1.0.1"
  sha256 "de7f45287db0dec567c114318fe10993436b00747c9c8c39e248e12ab6c7186a"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pluck"
  end

  test do
    assert_match "pluck", shell_output("#{bin}/pluck --help")
  end
end
