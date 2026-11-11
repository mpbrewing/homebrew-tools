cask "mesa-app" do
  version "2.1"
  sha256 "4abf983eba5caffe0c30f07658fe27f038435add2034c7bbbe39ab2d56d6ebec"

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
