cask "monivol" do
  version "1.1.4"
  sha256 "d233125e94bc8493e981ee66427604daaed9a0969b3143323161564b1976fdcb"

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
