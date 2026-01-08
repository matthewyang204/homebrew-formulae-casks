cask "schemix" do
  arch arm: "arm64", intel: "x86_64"
  
  version "1.1.1"
  sha256 :no_check

  url "https://github.com/matthewyang204/Schemix/releases/download/v#{version}/Schemix-macOS-#{arch}.zip"
  name "Schemix"
  desc "A cross-platform note-taking software for engineers and scientists"
  homepage "https://github.com/matthewyang204/Schemix"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Schemix.app"
  binary "#{appdir}/Schemix.app/Contents/MacOS/Schemix"
  
  depends_on macos: ">= :catalina"
end
