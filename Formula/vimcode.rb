class Vimcode < Formula
  desc "Vim-like code editor with GTK4, tree-sitter, and LSP support"
  homepage "https://github.com/JDonaghy/vimcode"
  url "https://github.com/JDonaghy/vimcode/releases/download/v0.13.0/vimcode-macos-arm64.tar.gz"
  version "0.13.0"
  sha256 "14e9a828deccdb325052e4f6a233d533d4c611d42470c84155acb2bebb759f1b"
  license "MIT"

  depends_on "gtk4"

  def install
    bin.install "vimcode"
  end

  test do
    assert_match "VimCode #{version}", shell_output("#{bin}/vimcode --version")
  end
end
