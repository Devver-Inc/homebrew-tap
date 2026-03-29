class DevverCli < Formula
  desc "Deploy and try your app in seconds"
  homepage "https://github.com/Devver-Inc/cli"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Devver-Inc/cli/releases/download/v0.0.2/devver-cli-aarch64-apple-darwin.tar.gz"
      sha256 "9eb96d65a600b73aa921791a087eb67a300dfa98d0f099a1cb58c60dde2d4eb8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Devver-Inc/cli/releases/download/v0.0.2/devver-cli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "33915f7c33ca005d26025a2c349468831fd1fd4e00e36fffb0b30ac6da8891ba"
    end
  end

  def install
    bin.install "devver-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devver-cli --version")
  end
end
