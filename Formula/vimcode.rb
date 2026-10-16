class Vimcode < Formula
  desc "Vim-like code editor with native macOS GUI, tree-sitter, and LSP support"
  homepage "https://github.com/JDonaghy/vimcode"
  url "https://github.com/JDonaghy/vimcode/releases/download/v0.15.3/vimcode-macos-native-arm64.tar.gz"
  version "0.15.3"
  sha256 "2e098021420449ab8c0c9d0fdeb144476a0131e5562f7d7c4f99b6eb0c606ba9"
  license "MIT"

  def install
    if File.directory?("VimCode.app")
      prefix.install "VimCode.app"
      bin.install_symlink prefix/"VimCode.app/Contents/MacOS/VimCode" => "vimcode"
    else
      bin.install "vimcode"
    end
  end

  def caveats
    if (prefix/"VimCode.app").exist?
      <<~EOS
        VimCode.app has been installed to:
          #{prefix}/VimCode.app

        To add it to Spotlight, Launchpad, and your Dock:
          ln -sf "#{prefix}/VimCode.app" /Applications/VimCode.app
      EOS
    end
  end

  test do
    assert_match "VimCode #{version}", shell_output("#{bin}/vimcode --version")
  end
end
