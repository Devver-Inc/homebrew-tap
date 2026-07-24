class DevverCli < Formula
  desc "Deploy and try your app in seconds"
  homepage "https://github.com/Devver-Inc/cli"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Devver-Inc/cli/releases/download/v1.2.0/devver-cli-aarch64-apple-darwin.tar.gz"
      sha256 "7b7868e9a39a9f48506a0ccb631ca331f306c5fd65582c40a325a6ffbc529941"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Devver-Inc/cli/releases/download/v1.2.0/devver-cli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5cfb47f42032c19998d541b658c543964dcab9d4f529df7cad785f919d673d3c"
    end
  end

  def install
    bin.install "devver"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devver --version")
  end
end
