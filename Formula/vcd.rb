class Vcd < Formula
  desc "Vim-like TUI code editor with tree-sitter and LSP support"
  homepage "https://github.com/JDonaghy/vimcode"
  url "https://github.com/JDonaghy/vimcode/releases/download/v0.9.0/vcd-macos-arm64.tar.gz"
  version "0.9.0"
  sha256 "0dc5ecb899c76538688ac22c9ff2c38b468c1cce2b60372113e43a258f38f031"
  license "MIT"

  def install
    bin.install "vcd"
  end

  test do
    assert_match "VimCode #{version}", shell_output("#{bin}/vcd --version")
  end
end
