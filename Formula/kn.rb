class Kn < Formula
  desc "Rust CLI for reading and editing Apple Keynote .key files"
  homepage "https://github.com/yijiezhong/Keynote"
  version "3.0.0"
  license "MIT"
  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/yijiezhong/Keynote/releases/download/v3.0.0/kn-v3.0.0-arm64.tar.gz"
      sha256 "960110c2c3f29a35a36b5798e1603c6522d7284f9f5216a48a5542140d21cac3"
    end

    on_intel do
      url "https://github.com/yijiezhong/Keynote/releases/download/v3.0.0/kn-v3.0.0-x86_64.tar.gz"
      sha256 "66a45ece8843b0fdfa612a4fd87a63c742f2113491abb40b79ee42c8e737c307"
    end
  end

  def install
    bin.install "kn"
  end

  test do
    assert_match "56", shell_output("#{bin}/kn help")
  end
end
