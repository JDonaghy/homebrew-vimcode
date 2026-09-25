class Vcd < Formula
  desc "Vim-like TUI code editor with tree-sitter and LSP support"
  homepage "https://github.com/JDonaghy/vimcode"
  url "https://github.com/JDonaghy/vimcode/releases/download/v0.13.0/vcd-macos-arm64.tar.gz"
  version "0.13.0"
  sha256 "a138b757af3b4fa4e58fd1c7707ec04e4f502c4e6eafb5af9597da7511446d68"
  license "MIT"

  def install
    bin.install "vcd"
  end

  test do
    assert_match "VimCode #{version}", shell_output("#{bin}/vcd --version")
  end
end
