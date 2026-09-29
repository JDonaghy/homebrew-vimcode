class Vimcode < Formula
  desc "Vim-like code editor with GTK4, tree-sitter, and LSP support"
  homepage "https://github.com/JDonaghy/vimcode"
  url "https://github.com/JDonaghy/vimcode/releases/download/v0.14.0/vimcode-macos-arm64.tar.gz"
  version "0.14.0"
  sha256 "7fea902ebec8390ebe3a712abea06979f10b4d901e3cbfcb5551be7dd0887c11"
  license "MIT"

  depends_on "gtk4"

  def install
    bin.install "vimcode"
  end

  test do
    assert_match "VimCode #{version}", shell_output("#{bin}/vimcode --version")
  end
end
