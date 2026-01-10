class DevverCli < Formula
  desc "Ultra-fast deployments and visual feedback for Devver"
  homepage "https://devver.app"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Devver-Inc/cli/releases/download/v0.0.1/devver-cli-aarch64-apple-darwin.tar.gz"
      sha256 "c28315cb05fc74b7dc41d3a09509042a3b0d5185553dfd931a846467064b3300"
    end
    if Hardware::CPU.intel?
      url "https://github.com/Devver-Inc/cli/releases/download/v0.0.1/devver-cli-x86_64-apple-darwin.tar.gz"
      sha256 "017892fa57a4998b1f18d09f4e8be18fc14ec847a5b195d0d53896da0db0b16d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Devver-Inc/cli/releases/download/v0.0.1/devver-cli-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "69a741a5a77332e653a4defadce4f716c45f294ccf368645c7310c05e995d34a"
    end
    if Hardware::CPU.intel?
      url "https://github.com/Devver-Inc/cli/releases/download/v0.0.1/devver-cli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b9a884054ce47af7433f8ce1e923685284c3b30f4afe26f6ecc85e2eab30aaa7"
    end
  end

  def install
    bin.install "devver-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devver-cli --version")
  end
end
