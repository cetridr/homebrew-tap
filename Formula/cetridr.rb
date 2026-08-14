class Cetridr < Formula
  desc "Rule the deep — a single-window command center for DeepSeek Harness agents"
  homepage "https://github.com/cetridr/cetridr"
  url "https://registry.npmjs.org/@cetridr/cetridr/-/cetridr-0.2.3.tgz"
  sha256 "34c894faf237873308bea6c42c76d60a3bf5d5e10eba23a87e808e38a2d699f7"
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
