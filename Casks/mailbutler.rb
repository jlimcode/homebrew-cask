cask "mailbutler" do
  version "6419,2828888"
  sha256 "87108ec8116e2b960b57e9d31d943eb83f1dea46874632945119f187b2873a43"

  url "https://downloads.mailbutler.io/sparkle/public/Mailbutler_#{version.csv.first}-#{version.csv.second}.zip"
  name "Mailbutler"
  desc "Personal assistant and productivity tool for Apple Mail"
  homepage "https://www.mailbutler.io/"

  livecheck do
    url "https://downloads.mailbutler.io/sparkle/public/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "Mailbutler.app"

  uninstall delete: "/Library/Mail/Bundles/Mailbutler.mailbundle"

  zap trash: [
    "~/Library/Application Support/com.mailbutler.app",
    "~/Library/Caches/com.mailbutler.app",
    "~/Library/LaunchAgents/com.mailbutler.agent.plist",
    "~/Library/Preferences/com.mailbutler.agent.plist",
    "~/Library/Preferences/com.mailbutler.app.plist",
    "~/Library/Saved Application State/com.mailbutler.app.savedState",
  ]
end
