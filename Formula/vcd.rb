class Vcd < Formula
  desc "Vim-like TUI code editor with tree-sitter and LSP support"
  homepage "https://github.com/JDonaghy/vimcode"
  url "https://github.com/JDonaghy/vimcode/releases/download/v0.6.0/vcd-macos-arm64.tar.gz"
  version "0.6.0"
  sha256 "95c4af9f0162ba015b15c4916cecbe863120150af9d942fd930fd2bee244426c"
  license "MIT"

  def install
    bin.install "vcd"
  end

  test do
    assert_match "VimCode #{version}", shell_output("#{bin}/vcd --version")
  end
end
