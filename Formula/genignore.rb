
class Genignore < Formula
  desc "A utility for setting up .gitignores"
  homepage "https://github.com/regarager/genignore"
  url "https://github.com/regarager/genignore/archive/refs/heads/master.zip"
  version "1.0.0"
  sha256 "8e00a6842656f479316ac3c13bd8ebaf73a71b9c62f8ff04a3dd090d1b9eb377"
  license "GPL-3.0"

  depends_on "go" => :build
  depends_on "make" => :build
  depends_on "pandoc" => :build

  # Additional dependency
  # resource "" do
  #   url ""
  #   sha256 ""
  # end

  def install
    system "make"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "genignore", "--version"
  end
end
