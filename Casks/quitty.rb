cask "quitty" do
  version "1.1.5"
  sha256 "a77fc3493a5df4a6630f0dd5e434480796fd443e08c090ca7323fc26e9c02f9f"

  url "https://github.com/chentao1006/Quitty/releases/download/v#{version}/Quitty.dmg"
  name "Quitty"
  desc "Automatically quit macOS apps when their last window is closed"
  homepage "https://github.com/chentao1006/Quitty"

  depends_on macos: ">= :sonoma"

  app "Quitty.app"

  zap trash: [
    "~/Library/Preferences/com.chentao1006.Quitty.plist",
  ]
end
