class FdkAac < Formula
  desc "Temporary placeholder for fdk-aac"
  homepage "https://github.com/mstorsjo/fdk-aac"
  version "0.0.0"

  def install
    (lib/"libfdk-aac.dylib").write("")
    (include/"fdk-aac").mkpath
  end
end
