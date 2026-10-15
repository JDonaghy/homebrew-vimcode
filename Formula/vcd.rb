class Vcd < Formula
  desc "Vim-like TUI code editor with tree-sitter and LSP support"
  homepage "https://github.com/JDonaghy/vimcode"
  url "https://github.com/JDonaghy/vimcode/releases/download/v0.15.3/vcd-macos-arm64.tar.gz"
  version "0.15.3"
  sha256 "a7ad337fc5bcfe1720a377301d228771864e92d92a7abe9f5bfd4ab10e831b40"
  license "MIT"

  def install
    bin.install "vcd"
  end

  test do
    assert_match "VimCode #{version}", shell_output("#{bin}/vcd --version")
  end
end
