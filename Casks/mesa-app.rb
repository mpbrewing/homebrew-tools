cask "mesa-app" do
  version "2.1"
  sha256 "fcfc12f0658ae0e3d8fef0e7221c9ec23841e7e06224c5bea244d8948dc7a5e7"

  url "https://github.com/mpbrewing/homebrew-tools/releases/download/v#{version}/Mesa-#{version}.dmg"
  name "Mesa"
  desc "Desktop app"
  homepage "https://github.com/mpbrewing/homebrew-tools"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Mesa.app"

  uninstall quit:   "mpj.mesa",
            signal: ["TERM", "mpj.mesa.cli-helper"]

  zap trash: [
    "~/Library/Application Scripts/group.mpj.mesa",
    "~/Library/Application Scripts/mpj.mesa",
    "~/Library/Application Scripts/mpj.mesa.WebClipper",
    "~/Library/Caches/mpj.mesa",
    "~/Library/Containers/mpj.mesa",
    "~/Library/Containers/mpj.mesa.WebClipper",
    "~/Library/Group Containers/group.mpj.mesa",
    "~/Library/HTTPStorages/mpj.mesa",
    "~/Library/Preferences/mpj.mesa.plist",
    "~/Library/Saved Application State/mpj.mesa.savedState",
  ]
end
