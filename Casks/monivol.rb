cask "monivol" do
  version "1.1.13"
  sha256 "78049733eed866cb779af27ccff4a89ce3ea20655cf68e2586b4e7f2f590b75e"

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
