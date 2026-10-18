class Vcd < Formula
  desc "Vim-like TUI code editor with tree-sitter and LSP support"
  homepage "https://github.com/JDonaghy/vimcode"
  url "https://github.com/JDonaghy/vimcode/releases/download/v0.15.5/vcd-macos-arm64.tar.gz"
  version "0.15.5"
  sha256 "39adbea1c00897b588d4c6c8851888f7b27e88a3ee7d19d8de80f9bb28b6a79d"
  license "MIT"

  def install
    bin.install "vcd"
  end

  test do
    assert_match "VimCode #{version}", shell_output("#{bin}/vcd --version")
  end
end
