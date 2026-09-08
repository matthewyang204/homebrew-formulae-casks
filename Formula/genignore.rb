class Genignore < Formula
  desc "Utility for setting up .gitignores"
  homepage "https://github.com/matthewyang204/genignore"
  url "https://github.com/regarager/genignore/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "339d35124c7c4af2c1913932760dcc456a689aa22a29f48fde1971a6fe8c3e01"
  license "GPL-3.0-or-later"

  depends_on "go" => :build
  depends_on "make" => :build
  depends_on "pandoc" => :build

  def install
    system "make"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"genignore", "--version"
  end
end
