class FdkAac < Formula
  desc "Temporary placeholder for fdk-aac"
  homepage "https://github.com/mstorsjo/fdk-aac"
  url "https://github.com/matthewyang204/homebrew-formulae-casks/raw/12c7bd34aac1fa2455895dfb9f8c72657de4623e/Formula/fdk-aac.rb"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  version "0.0.0"

  def install
    (lib/"libfdk-aac.dylib").write("")
    (include/"fdk-aac").mkpath
  end
end
