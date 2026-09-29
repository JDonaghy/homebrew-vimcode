class Vcd < Formula
  desc "Vim-like TUI code editor with tree-sitter and LSP support"
  homepage "https://github.com/JDonaghy/vimcode"
  url "https://github.com/JDonaghy/vimcode/releases/download/v0.14.0/vcd-macos-arm64.tar.gz"
  version "0.14.0"
  sha256 "36f73418b97f81898fa6e8437a0cfbd2a71775a2c6ba26e7d4cd2d60cfd5dc97"
  license "MIT"

  def install
    bin.install "vcd"
  end

  test do
    assert_match "VimCode #{version}", shell_output("#{bin}/vcd --version")
  end
end
