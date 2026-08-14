class Cetridr < Formula
  desc "Rule the deep — a single-window command center for DeepSeek Harness agents"
  homepage "https://github.com/cetridr/cetridr"
  url "https://registry.npmjs.org/@cetridr/cetridr/-/cetridr-0.2.0.tgz"
  sha256 "e55f04ed7216e32c60a0e9fb971735e4f7d543734f4efb9640fef867396a2771"
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
