class Vcd < Formula
  desc "Vim-like TUI code editor with tree-sitter and LSP support"
  homepage "https://github.com/JDonaghy/vimcode"
  url "https://github.com/JDonaghy/vimcode/releases/download/v0.7.0/vcd-macos-arm64.tar.gz"
  version "0.7.0"
  sha256 "588458894f603e18e7e4d9858da4b7962419b0af4d0526918c3673ed166f298f"
  license "MIT"

  def install
    bin.install "vcd"
  end

  test do
    assert_match "VimCode #{version}", shell_output("#{bin}/vcd --version")
  end
end
