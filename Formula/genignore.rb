class Genignore < Formula
  desc "Utility for setting up .gitignores"
  homepage "https://github.com/matthewyang204/genignore"
  url "https://github.com/regarager/genignore/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
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
