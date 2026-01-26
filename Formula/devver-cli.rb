class DevverCli < Formula
  desc "Ultra-fast deployments and visual feedback for Devver"
  homepage "https://devver.app"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Devver-Inc/cli/releases/download/v1.0.1/devver-cli-darwin-arm64.tar.gz"
      sha256 "828c1321dba30d45155a34c8719424f2c06f628d92453ba8b26189bfd5427f2e"
    end
    if Hardware::CPU.intel?
      url "https://github.com/Devver-Inc/cli/releases/download/v1.0.1/devver-cli-darwin-x64.tar.gz"
      sha256 "0a55e0e3aa91302de566ca4592046d94671790e6c43ae093041aea8b96238eb8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Devver-Inc/cli/releases/download/v1.0.1/devver-cli-linux-x64.tar.gz"
      sha256 "235299f2e73eb6fbb270c8d1662bf17d4105085349a5f9585748a25e19c34820"
    end
  end

  def install
    bin.install "devver-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devver-cli --version")
  end
end
