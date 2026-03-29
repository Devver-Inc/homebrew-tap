class DevverCli < Formula
  desc "Deploy and try your app in seconds"
  homepage "https://github.com/Devver-Inc/cli"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Devver-Inc/cli/releases/download/v0.0.2/devver-cli-aarch64-apple-darwin.tar.gz"
      sha256 "701f448c1c4bbe8992523acbc8d8fa285a15f8bb0ace06f65ce746c5aa37f2d1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Devver-Inc/cli/releases/download/v0.0.2/devver-cli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f109a12268af0d36bea302094567ca61a32dfca48f8785b220359b82e4f1cd4b"
    end
  end

  def install
    bin.install "devver-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devver-cli --version")
  end
end
