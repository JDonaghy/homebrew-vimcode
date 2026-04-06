class Vcd < Formula
  desc "Vim-like TUI code editor with tree-sitter and LSP support"
  homepage "https://github.com/JDonaghy/vimcode"
  url "https://github.com/JDonaghy/vimcode/releases/download/v0.8.0/vcd-macos-arm64.tar.gz"
  version "0.8.0"
  sha256 "853936d60b92104ae957c10d52e601fc0da49ed7da5f814e3e5c5203d9cb7b10"
  license "MIT"

  def install
    bin.install "vcd"
  end

  test do
    assert_match "VimCode #{version}", shell_output("#{bin}/vcd --version")
  end
end
