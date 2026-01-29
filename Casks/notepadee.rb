cask "notepadee" do
  arch arm: "arm64", intel: "x86_64"
  
  version "5.2.4"
  sha256 :no_check

  url "https://github.com/matthewyang204/NotepadEE/releases/download/#{version}/NotepadEE-macOS-#{arch}.zip"
  name "Notepad=="
  desc "Simple Windows Notepad replacement for Unix systems"
  homepage "https://github.com/matthewyang204/NotepadEE"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Notepad==.app"
  binary "#{appdir}/Notepad==.app/Contents/Resources/scripts/notepadee"
  
  depends_on macos: ">= :catalina"

  zap trash: [
    "~/.notepadee/cache",
  ]
end
