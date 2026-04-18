class Vcd < Formula
  desc "Vim-like TUI code editor with tree-sitter and LSP support"
  homepage "https://github.com/JDonaghy/vimcode"
  url "https://github.com/JDonaghy/vimcode/releases/download/v0.10.0/vcd-macos-arm64.tar.gz"
  version "0.10.0"
  sha256 "d56267992ef148f7c5c061780a76bb1aabbbccba186841d190bc8cdf1d46ae3e"
  license "MIT"

  def install
    bin.install "vcd"
  end

  test do
    assert_match "VimCode #{version}", shell_output("#{bin}/vcd --version")
  end
end
