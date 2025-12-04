class Libmysolvers < Formula
  desc "Matthew Yang's Equation Solving Library"
  homepage "https://github.com/matthewyang204/libmysolvers"
  head "https://github.com/matthewyang204/libmysolvers.git", branch: "main"
  license "GPL-3.0"

  depends_on "make" => :build
  depends_on "gcc" => :build
  depends_on "binutils" => :build
  depends_on "gnu-sed" => :build

  def install
    ENV["CC"] = "gcc-15"
    system "./configure", "--prefix=#{prefix}"
    system "gmake"
    system "gmake", "install"
  end
  
  def caveats
    <<~EOS
    libmysolvers is a rolling-release library.
    To update to the latest commit, run:
    brew upgrade --fetch-HEAD libmysolvers
    EOS
  end
end
