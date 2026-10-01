cask "monivol" do
  version "1.1.8"
  sha256 "8169681a1ffbdd37ded90b8a4078ff70772e55963c3aa2c30a9936323f203ca5"

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
