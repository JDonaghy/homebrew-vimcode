class Vimcode < Formula
  desc "Vim-like code editor with GTK4, tree-sitter, and LSP support"
  homepage "https://github.com/JDonaghy/vimcode"
  url "https://github.com/JDonaghy/vimcode/releases/download/v0.15.1/vimcode-macos-arm64.tar.gz"
  version "0.15.1"
  sha256 "c9cb5591dbbae92a48980c4dab0ecf5609d073c37cfed21dbd5f9ac9b581ac74"
  license "MIT"

  depends_on "gtk4"

  def install
    bin.install "vimcode"
  end

  test do
    assert_match "VimCode #{version}", shell_output("#{bin}/vimcode --version")
  end
end
