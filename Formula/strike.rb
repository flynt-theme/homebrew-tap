class Strike < Formula
  desc "Flynt theme generator - builds themes from palette + templates"
  homepage "https://github.com/flynt-theme/strike"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/flynt-theme/strike/releases/download/v0.1.2/strike-darwin-amd64"
      sha256 "98b2479021f20946f12343f78861a6ee2cef7599071e4e3293f4d6311acfd367"
    end
    on_arm do
      url "https://github.com/flynt-theme/strike/releases/download/v0.1.2/strike-darwin-arm64"
      sha256 "b46be1d7030e71a8d028de06e70b9449e933b20e41cdd7a5756c0ee359c0bac2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flynt-theme/strike/releases/download/v0.1.2/strike-linux-amd64"
      sha256 "181ba6651bd064f7160eed3d2af0050b5bb814f8d0f22b917b7dc5e221939cde"
    end
  end

  def install
    bin.install Dir["strike-*"].first => "strike"
  end

  test do
    assert_match "Strike", shell_output("#{bin}/strike --help 2>&1", 1)
  end
end
