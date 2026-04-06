class Vimcode < Formula
  desc "Vim-like code editor with GTK4, tree-sitter, and LSP support"
  homepage "https://github.com/JDonaghy/vimcode"
  url "https://github.com/JDonaghy/vimcode/releases/download/v0.8.0/vimcode-macos-arm64.tar.gz"
  version "0.8.0"
  sha256 "a24e616d9fd321b07f12cc96c92217f99e550127511712d3d8fd4d8837b0e875"
  license "MIT"

  depends_on "gtk4"

  def install
    bin.install "vimcode"
  end

  test do
    assert_match "VimCode #{version}", shell_output("#{bin}/vimcode --version")
  end
end
