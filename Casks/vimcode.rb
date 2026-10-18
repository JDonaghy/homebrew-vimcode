cask "vimcode" do
  version "0.15.4"
  sha256 "9c3492e9ca0250960f4b1caf140f7befbcd06a324f3f94f1601853509318e126"

  url "https://github.com/JDonaghy/vimcode/releases/download/v#{version}/vimcode-macos-native-arm64.tar.gz"
  name "VimCode"
  desc "Vim-like code editor with native macOS GUI, tree-sitter, and LSP support"
  homepage "https://github.com/JDonaghy/vimcode"

  app "VimCode.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/VimCode.app"]
  end

  zap trash: [
    "~/Library/Application Support/VimCode",
    "~/Library/Caches/VimCode",
    "~/Library/Preferences/io.github.jdonaghy.VimCode.plist",
  ]
end
