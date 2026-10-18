class Vcd < Formula
  desc "Vim-like TUI code editor with tree-sitter and LSP support"
  homepage "https://github.com/JDonaghy/vimcode"
  url "https://github.com/JDonaghy/vimcode/releases/download/v0.15.4/vcd-macos-arm64.tar.gz"
  version "0.15.4"
  sha256 "d338a1d5be6339151e00784c5c158dff74598bf796ec9872419db432a1b5d331"
  license "MIT"

  def install
    bin.install "vcd"
  end

  test do
    assert_match "VimCode #{version}", shell_output("#{bin}/vcd --version")
  end
end
