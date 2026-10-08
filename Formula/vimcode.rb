class Vimcode < Formula
  desc "Vim-like code editor with GTK4, tree-sitter, and LSP support"
  homepage "https://github.com/JDonaghy/vimcode"
  url "https://github.com/JDonaghy/vimcode/releases/download/v0.15.0/vimcode-macos-arm64.tar.gz"
  version "0.15.0"
  sha256 "06506ede6a5c02d0327bb00d91eb43f2a1c4a4ced19fb6be0ec37d03f06cf5fb"
  license "MIT"

  depends_on "gtk4"

  def install
    bin.install "vimcode"
  end

  test do
    assert_match "VimCode #{version}", shell_output("#{bin}/vimcode --version")
  end
end
