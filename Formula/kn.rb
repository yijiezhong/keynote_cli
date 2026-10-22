class Kn < Formula
  desc "Rust CLI for reading and editing Apple Keynote .key files"
  homepage "https://github.com/yijiezhong/Keynote"
  url "https://github.com/yijiezhong/Keynote/releases/download/v3.0.1/kn-v3.0.1-universal.tar.gz"
  sha256 "ebadf61480938bf45abcb22d2b8527f615c44b2b4cf798b21d11ffac61ab6ca5"
  license "MIT"
  depends_on :macos

  def install
    bin.install "kn"
  end

  test do
    assert_match "57 条命令", shell_output("#{bin}/kn help")
  end
end
