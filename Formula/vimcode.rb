class Vimcode < Formula
  desc "Vim-like code editor with GTK4, tree-sitter, and LSP support"
  homepage "https://github.com/JDonaghy/vimcode"
  url "https://github.com/JDonaghy/vimcode/releases/download/v0.7.0/vimcode-macos-arm64.tar.gz"
  version "0.7.0"
  sha256 "86f3d81998f102d0f426ec291dd1359a47383a90e08e13685523f42d14980302"
  license "MIT"

  depends_on "gtk4"

  def install
    bin.install "vimcode"
  end

  test do
    assert_match "VimCode #{version}", shell_output("#{bin}/vimcode --version")
  end
end
