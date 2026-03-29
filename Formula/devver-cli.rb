class DevverCli < Formula
  desc "Deploy and try your app in seconds"
  homepage "https://github.com/Devver-Inc/cli"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Devver-Inc/cli/releases/download/v0.0.2/devver-cli-aarch64-apple-darwin.tar.gz"
      sha256 "12d7db4413e7bdcca2186a6faa5ff02025ca527dee06459343e8739b604abff2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Devver-Inc/cli/releases/download/v0.0.2/devver-cli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "db897978fcdb343c6014189bac50d7f63c86bfed76f3bb7198a6b2973aa3fbbf"
    end
  end

  def install
    bin.install "devver-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devver-cli --version")
  end
end
