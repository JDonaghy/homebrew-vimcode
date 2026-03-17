class Vcd < Formula
  desc "Vim-like TUI code editor with tree-sitter and LSP support"
  homepage "https://github.com/JDonaghy/vimcode"
  url "https://github.com/JDonaghy/vimcode/archive/refs/tags/v0.3.7.tar.gz"
  sha256 "3d2b68ff6bcbfea723ddfd26234ca0e99dc67d69d780e386405325a574c59e39"
  license "MIT"
  head "https://github.com/JDonaghy/vimcode.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(bin: bin, path: "."), "--no-default-features", "--bin", "vcd"
  end

  test do
    assert_match "VimCode #{version}", shell_output("#{bin}/vcd --version")
  end
end
