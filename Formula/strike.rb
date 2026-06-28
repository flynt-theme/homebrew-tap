class Strike < Formula
  desc "Flynt theme generator - builds themes from palette + templates"
  homepage "https://github.com/flynt-theme/strike"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/flynt-theme/strike/releases/download/v0.1.0/strike-darwin-amd64"
      sha256 "f04b59da28a3f0bc34092b5fd5f2738e726faad7399ca4d652c2efa1ad3f232f"
    end
    on_arm do
      url "https://github.com/flynt-theme/strike/releases/download/v0.1.0/strike-darwin-arm64"
      sha256 "ddc3ac5d0d8e386a77c82034bc5bf1645c125628f24dfba5ba48a84bc3823292"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flynt-theme/strike/releases/download/v0.1.0/strike-linux-amd64"
      sha256 "53bfaf8a455fda6866764254467706469f0398d3a567cf45e40f8746ea39998a"
    end
  end

  def install
    bin.install Dir["strike-*"].first => "strike"
  end

  test do
    assert_match "Strike", shell_output("#{bin}/strike --help 2>&1", 1)
  end
end
