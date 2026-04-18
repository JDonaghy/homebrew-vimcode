class Vimcode < Formula
  desc "Vim-like code editor with GTK4, tree-sitter, and LSP support"
  homepage "https://github.com/JDonaghy/vimcode"
  url "https://github.com/JDonaghy/vimcode/releases/download/v0.10.0/vimcode-macos-arm64.tar.gz"
  version "0.10.0"
  sha256 "63539dedde685e5b13c8c4cc2502d1853b111dc84bc6cea4fc08d2306e2ec085"
  license "MIT"

  depends_on "gtk4"

  def install
    bin.install "vimcode"
  end

  test do
    assert_match "VimCode #{version}", shell_output("#{bin}/vimcode --version")
  end
end
