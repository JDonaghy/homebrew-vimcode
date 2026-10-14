class Vcd < Formula
  desc "Vim-like TUI code editor with tree-sitter and LSP support"
  homepage "https://github.com/JDonaghy/vimcode"
  url "https://github.com/JDonaghy/vimcode/releases/download/v0.15.2/vcd-macos-arm64.tar.gz"
  version "0.15.2"
  sha256 "11381949c904f58f10499ecf581f6d344f37827ef68173cb53d4110f14bb62af"
  license "MIT"

  def install
    bin.install "vcd"
  end

  test do
    assert_match "VimCode #{version}", shell_output("#{bin}/vcd --version")
  end
end
