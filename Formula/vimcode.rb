class Vimcode < Formula
  desc "Vim-like code editor with GTK4, tree-sitter, and LSP support"
  homepage "https://github.com/JDonaghy/vimcode"
  url "https://github.com/JDonaghy/vimcode/releases/download/v0.9.0/vimcode-macos-arm64.tar.gz"
  version "0.9.0"
  sha256 "c8ed75f4fd2210c997afcb5a2b663e66d294afc0c789ec6b0f08938d6c20f85f"
  license "MIT"

  depends_on "gtk4"

  def install
    bin.install "vimcode"
  end

  test do
    assert_match "VimCode #{version}", shell_output("#{bin}/vimcode --version")
  end
end
