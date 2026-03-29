class DevverCli < Formula
  desc "Deploy and try your app in seconds"
  homepage "https://github.com/Devver-Inc/cli"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Devver-Inc/cli/releases/download/v0.0.2/devver-cli-aarch64-apple-darwin.tar.gz"
      sha256 "ef2a21579d4ea4dce465ce29e6352ef8a0a80e298e969923d94e8f37cbe5b271"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Devver-Inc/cli/releases/download/v0.0.2/devver-cli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "45a30abe075eb8c2fcdceaddc1ec866e1767570daecbf858f3514b4605d5e2a1"
    end
  end

  def install
    bin.install "devver-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devver-cli --version")
  end
end
