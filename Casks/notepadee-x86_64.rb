cask "notepadee-x86_64" do
  version "5.0.6"
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

  zap trash: [
    "~/.notepadee",
  ]
end
