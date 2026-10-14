class Vcd < Formula
  desc "Vim-like TUI code editor with tree-sitter and LSP support"
  homepage "https://github.com/JDonaghy/vimcode"
  url "https://github.com/JDonaghy/vimcode/releases/download/v0.15.1/vcd-macos-arm64.tar.gz"
  version "0.15.1"
  sha256 "55fd0e33ae7579fec3efc4d734e2b6a4f6c361f7993f6318c3b03289bbe148ef"
  license "MIT"

  def install
    bin.install "vcd"
  end

  test do
    assert_match "VimCode #{version}", shell_output("#{bin}/vcd --version")
  end
end
