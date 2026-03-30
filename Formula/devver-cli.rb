class DevverCli < Formula
  desc "Deploy and try your app in seconds"
  homepage "https://github.com/Devver-Inc/cli"
  version "0.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Devver-Inc/cli/releases/download/v0.0.4/devver-cli-aarch64-apple-darwin.tar.gz"
      sha256 "dc19bac8be8eb694edb995bc665d9f75ecab62a98d4c3181187abb71dd7937f3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Devver-Inc/cli/releases/download/v0.0.4/devver-cli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "163d095a4faf01ce7c84b71fbe1b61bf7a07a1c7535d7adb27263e94ca5dfa88"
    end
  end

  def install
    bin.install "devver-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devver-cli --version")
  end
end
