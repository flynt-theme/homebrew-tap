class Strike < Formula
  desc "Flynt theme generator - builds themes from palette + templates"
  homepage "https://github.com/flynt-theme/strike"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/flynt-theme/strike/releases/download/v0.1.1/strike-darwin-amd64"
      sha256 "57fc89be49eb15d205d27de3d3e8fb5cb11c354593b05b6223a5dc34d35100ac"
    end
    on_arm do
      url "https://github.com/flynt-theme/strike/releases/download/v0.1.1/strike-darwin-arm64"
      sha256 "bf33f68e80d7a9edb09c18edb32b6ed151a281151450b24d82fc505dfb7285ef"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flynt-theme/strike/releases/download/v0.1.1/strike-linux-amd64"
      sha256 "51f43fcc072688806c528855aa520f81ebbc3eecb09e408ea2661c47bc64fab9"
    end
  end

  def install
    bin.install Dir["strike-*"].first => "strike"
  end

  test do
    assert_match "Strike", shell_output("#{bin}/strike --help 2>&1", 1)
  end
end
