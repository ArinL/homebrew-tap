cask "omlx" do
  version "0.3.6"
  sha256 "3f437f8e728b58e525c4dad45502fb26238aeffa042e78c3b216153df95e1ab0"

  url "https://github.com/jundot/omlx/releases/download/v#{version}/oMLX-#{version}-macos26-tahoe.dmg"
  name "oMLX"
  desc "LLM inference server with continuous batching & SSD caching for Apple Silicon"
  homepage "https://github.com/jundot/omlx"

  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  app "oMLX.app"

  zap trash: [
    "~/.omlx",
    "~/Library/Preferences/ai.omlx.plist",
  ]
end
