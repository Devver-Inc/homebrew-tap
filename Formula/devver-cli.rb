class DevverCli < Formula
  desc "Deploy and try your app in seconds"
  homepage "https://github.com/Devver-Inc/cli"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Devver-Inc/cli/releases/download/v0.0.2/devver-cli-aarch64-apple-darwin.tar.gz"
      sha256 "95220c1601313a8545ec6be33a8beb067edf77561d9f3caeb47ed1ba1cf87d4c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Devver-Inc/cli/releases/download/v0.0.2/devver-cli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a0f5b0e7e4be919332de5d06db00bcb7aba09aace4be3d82d011c4a2c0ffc592"
    end
  end

  def install
    bin.install "devver-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devver-cli --version")
  end
end
