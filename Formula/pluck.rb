class Pluck < Formula
  desc "Remove image backgrounds offline, on-device (CLI)"
  homepage "https://pluck.aix4u.com/"
  url "https://github.com/RuochenLyu/pluck/releases/download/v1.0.0/pluck-cli-1.0.0-macos-arm64.zip"
  sha256 "7c8663daf7d49462e5fc8d1cef6547d79911c13cbf89edfaf1078fa1e4f2fede"
  version "1.0.0"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "pluck"
  end

  test do
    assert_match "pluck", shell_output("#{bin}/pluck --help")
  end
end
