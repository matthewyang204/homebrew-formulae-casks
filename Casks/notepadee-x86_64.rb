cask "notepadee-x86_64" do
  version "5.0.10"
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
   The notepadee cask provides both arm64 and x86_64 binaries. Please use it instead of these specific casks notepadee-arm64 and notepadee-x86_64.
  EOS

  deprececate! date: "2025-05-16", because: caveats
end
