class Vcd < Formula
  desc "Vim-like TUI code editor with tree-sitter and LSP support"
  homepage "https://github.com/JDonaghy/vimcode"
  url "https://github.com/JDonaghy/vimcode/archive/refs/tags/v0.3.8.tar.gz"
  sha256 "9e22ff9e7efd9b7d85405519fa5efe7ecb0d3386431188a921504d2a51e6ff5d"
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
