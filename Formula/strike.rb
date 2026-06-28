class Strike < Formula
  desc "Flynt theme generator - builds themes from palette + templates"
  homepage "https://github.com/flynt-theme/strike"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/flynt-theme/strike/releases/download/v0.1.1/strike-darwin-amd64"
      sha256 "5ae3fed2d1badaee3d4caa05e6cb449820b00ebd0942f16e58f1ce0d88d3ebd8"
    end
    on_arm do
      url "https://github.com/flynt-theme/strike/releases/download/v0.1.1/strike-darwin-arm64"
      sha256 "3c7f85666c3a9cd31495df35bb7440fc1570204c39340c8fe75e625237fcd9b9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flynt-theme/strike/releases/download/v0.1.1/strike-linux-amd64"
      sha256 "1200fa4f3f9bd57cfd345c363b322cbfa4855e02d9516c06fbee719d6bfda996"
    end
  end

  def install
    bin.install Dir["strike-*"].first => "strike"
  end

  test do
    assert_match "Strike", shell_output("#{bin}/strike --help 2>&1", 1)
  end
end
