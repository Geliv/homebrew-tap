cask "monivol" do
  version "1.1.9"
  sha256 "1f827ffcebd9eb6b562758bad50277633e5968d6b726116513b3d9293e22002b"

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
