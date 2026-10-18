cask "vimcode" do
  version "0.15.5"
  sha256 "9b3e174bea0ff2e54286d06aabb8d98a3ce3e8ec28e9787e81476afd64b4aa75"

  url "https://github.com/JDonaghy/vimcode/releases/download/v#{version}/vimcode-macos-native-arm64.tar.gz"
  name "VimCode"
  desc "Vim-like code editor with native macOS GUI, tree-sitter, and LSP support"
  homepage "https://github.com/JDonaghy/vimcode"

  app "VimCode.app"
  binary "#{appdir}/VimCode.app/Contents/MacOS/VimCode", target: "vimcode"

  postflight_steps do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/VimCode.app"]
  end

  zap trash: [
    "~/Library/Application Support/VimCode",
    "~/Library/Caches/VimCode",
    "~/Library/Preferences/io.github.jdonaghy.VimCode.plist",
  ]
end
