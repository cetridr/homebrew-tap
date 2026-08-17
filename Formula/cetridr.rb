class Cetridr < Formula
  desc "Rule the deep — a single-window command center for DeepSeek Harness agents"
  homepage "https://github.com/cetridr/cetridr"
  url "https://github.com/cetridr/cetridr/releases/download/v0.2.4/cetridr-cetridr-0.2.4.tgz"
  sha256 "6ea81bc14768b1f0ca7f8172d39eafeb3a6dd71c3d7a0e75ec0ab0c0ab5d105d"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin"/"cetridr"
  end

  test do
    assert_match "Usage: cetridr", shell_output("#{bin}/cetridr --help")
  end
end
