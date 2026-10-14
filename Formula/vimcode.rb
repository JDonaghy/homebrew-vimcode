class Vimcode < Formula
  desc "Vim-like code editor with GTK4, tree-sitter, and LSP support"
  homepage "https://github.com/JDonaghy/vimcode"
  url "https://github.com/JDonaghy/vimcode/releases/download/v0.15.2/vimcode-macos-arm64.tar.gz"
  version "0.15.2"
  sha256 "17f6b01d22511cee934fb70025da76e319b3079b060004fe53eecbe21b04b3f7"
  license "MIT"

  depends_on "gtk4"

  def install
    bin.install "vimcode"
  end

  test do
    assert_match "VimCode #{version}", shell_output("#{bin}/vimcode --version")
  end
end
