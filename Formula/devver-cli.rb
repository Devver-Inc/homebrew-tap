class DevverCli < Formula
  desc "Deploy and try your app in seconds"
  homepage "https://github.com/Devver-Inc/cli"
  version "0.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Devver-Inc/cli/releases/download/v0.0.3/devver-cli-aarch64-apple-darwin.tar.gz"
      sha256 "5edd1ba42aa0431440a1fbbc5a5ffc3f3dc494ae64286549f01cd1ee7ceb73f8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Devver-Inc/cli/releases/download/v0.0.3/devver-cli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cad1e658281c443cb78e573db39387913cb0e9903bf0aecdf841a313a33af30a"
    end
  end

  def install
    bin.install "devver-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devver-cli --version")
  end
end
