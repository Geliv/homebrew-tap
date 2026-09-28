cask "monivol" do
  version "1.1.3"
  sha256 "c81303518f4768c5c016099179e0051f20aba8fcc182a985d57a9cd1177d9e95"

  url "https://github.com/Geliv/MoniVol/releases/download/v#{version}/MoniVol.dmg"
  name "MoniVol"
  desc "Control system volume on external HDMI and DisplayPort displays"
  homepage "https://github.com/Geliv/MoniVol"

  depends_on macos: :ventura

  app "MoniVol.app"

  caveats <<~EOS
    MoniVol is not notarized by Apple. If macOS blocks its first launch,
    open System Settings > Privacy & Security and choose Open Anyway.

    Launch MoniVol and follow its first-run guide to install the audio driver.
    Before uninstalling this cask, select Uninstall Driver in MoniVol's menu.
  EOS
end
