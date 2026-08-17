class Cetridr < Formula
  desc "Rule the deep — a single-window command center for DeepSeek Harness agents"
  homepage "https://github.com/cetridr/cetridr"
  url "https://registry.npmjs.org/@cetridr/cetridr/-/cetridr-0.2.3.tgz"
  sha256 "7eeeecd55a3027cfcdaeb02ca1c0b25c918d3fad1eea250e0c7095b08cf0f2ac"
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
