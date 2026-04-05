class Vcd < Formula
  desc "Vim-like TUI code editor with tree-sitter and LSP support"
  homepage "https://github.com/JDonaghy/vimcode"
  url "https://github.com/JDonaghy/vimcode/releases/download/v0.8.0/vcd-macos-arm64.tar.gz"
  version "0.8.0"
  sha256 "3ee2b58265fd81dd6ab6e0646aa4b869eaaeb217fa1177ab77c9c7678a95220d"
  license "MIT"

  def install
    bin.install "vcd"
  end

  test do
    assert_match "VimCode #{version}", shell_output("#{bin}/vcd --version")
  end
end
