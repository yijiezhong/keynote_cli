class Kn < Formula
  desc "Rust CLI for reading and editing Apple Keynote .key files"
  homepage "https://github.com/yijiezhong/Keynote"
  url "https://github.com/yijiezhong/Keynote/releases/download/v3.0.0/kn-v3.0.0-universal.tar.gz"
  sha256 "397052c3501e16f4c35705d8331e069cf6e934fb72551e742af8e76f5a2e5efb"
  license "MIT"
  depends_on :macos

  def install
    bin.install "kn"
  end

  test do
    assert_match "56", shell_output("#{bin}/kn help")
  end
end
