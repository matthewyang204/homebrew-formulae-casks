cask "notepadee-x86_64" do
  version "5.0.9"
  sha256 :no_check

  url "https://github.com/matthewyang204/NotepadEE/releases/download/#{version}/NotepadEE-macOS-x86_64.zip"
  name "Notepad=="
  desc "Simple Windows Notepad replacement for Unix systems"
  homepage "https://github.com/matthewyang204/NotepadEE"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Notepad==.app"
  
  depends_on macos: ">= :catalina"

  zap trash: [
    "~/.notepadee",
  ]
  
  caveats <<~EOS
  Because Python.org soon won't provide official Python 3.12 packages, I now build my own copy of Python 3.12 with the macOS 10.15 Catalina SDK. Please switch to using the notepadee cask, as this cask and the specific x86_64 cask will soon be deprececated. Additionally, this cask and the x86_64 cask will no longer get updates. 5.0.10 will be the last update to these casks.
  EOS
end
