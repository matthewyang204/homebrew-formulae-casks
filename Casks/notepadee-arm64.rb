cask "notepadee-arm64" do
  version "5.0.9"
  sha256 :no_check

  url "https://github.com/matthewyang204/NotepadEE/releases/download/#{version}/NotepadEE-macOS-arm64.zip"
  name "Notepad=="
  desc "Simple Windows Notepad replacement for Unix systems"
  homepage "https://github.com/matthewyang204/NotepadEE"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Notepad==.app"

  zap trash: [
    "~/.notepadee",
  ]
  
  caveats <<~EOS
  Although this is the arm64 cask, arm64 native binaries for Notepad== are no longer available for macOS. Because Python.org soon won't provide official Python 3.12 packages, I now build my own copy of Python 3.12 with the macOS 10.15 Catalina SDK. Please switch to using the notepadee cask, as this cask and the specific x86_64 cask will soon be deprececated. Additionally, this cask and the x86_64 cask will no longer get updates. 3.0.10 will be the last update to these casks.
  EOS
end
