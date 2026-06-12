class DevverCli < Formula
  desc "Deploy and try your app in seconds"
  homepage "https://github.com/Devver-Inc/cli"
  version "1.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Devver-Inc/cli/releases/download/v1.1.2/devver-cli-aarch64-apple-darwin.tar.gz"
      sha256 "26db67e6c871ad522118a778cddc606dcab0ecc4fd519642aa87a0ee2dee8c4e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Devver-Inc/cli/releases/download/v1.1.2/devver-cli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dd9870fd540038d7ee11c19777a05c64f1252e4fd85c6eebcc45bbcb2b128ee5"
    end
  end

  def install
    bin.install "devver-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devver-cli --version")
  end
end
