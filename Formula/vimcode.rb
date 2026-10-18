class Vimcode < Formula
  desc "Vim-like code editor with native macOS GUI, tree-sitter, and LSP support"
  homepage "https://github.com/JDonaghy/vimcode"
  url "https://github.com/JDonaghy/vimcode/releases/download/v0.15.4/vimcode-macos-native-arm64.tar.gz"
  version "0.15.4"
  sha256 "9c3492e9ca0250960f4b1caf140f7befbcd06a324f3f94f1601853509318e126"
  license "MIT"

  def install
    if File.directory?("VimCode.app")
      prefix.install "VimCode.app"
    elsif File.exist?("Contents/Info.plist")
      (buildpath/"VimCode.app").mkpath
      cp_r "Contents", "VimCode.app/"
      prefix.install "VimCode.app"
    end

    if (prefix/"VimCode.app").exist?
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
