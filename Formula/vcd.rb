class Vcd < Formula
  desc "Vim-like TUI code editor with tree-sitter and LSP support"
  homepage "https://github.com/JDonaghy/vimcode"
  url "https://github.com/JDonaghy/vimcode/releases/download/v0.15.0/vcd-macos-arm64.tar.gz"
  version "0.15.0"
  sha256 "4e95e327218a80b0696de49ae9049af449f501ca824ede39e75b916d506045aa"
  license "MIT"

  def install
    bin.install "vcd"
  end

  test do
    assert_match "VimCode #{version}", shell_output("#{bin}/vcd --version")
  end
end
