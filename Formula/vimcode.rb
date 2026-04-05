class Vimcode < Formula
  desc "Vim-like code editor with GTK4, tree-sitter, and LSP support"
  homepage "https://github.com/JDonaghy/vimcode"
  url "https://github.com/JDonaghy/vimcode/releases/download/v0.8.0/vimcode-macos-arm64.tar.gz"
  version "0.8.0"
  sha256 "5bde5cc3eabd8b11e93b62f339ee872ba5e978b757c7693818f624cbfb113259"
  license "MIT"

  depends_on "gtk4"

  def install
    bin.install "vimcode"
  end

  test do
    assert_match "VimCode #{version}", shell_output("#{bin}/vimcode --version")
  end
end
