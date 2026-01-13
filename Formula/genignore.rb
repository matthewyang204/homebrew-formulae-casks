class Genignore < Formula
  desc "A utility for setting up .gitignores"
  homepage "https://github.com/matthewyang204/genignore"
  url "https://github.com/matthewyang204/genignore/archive/refs/heads/master.zip"
  version "1.0.0"
  sha256 "1e19fc804158a0941323c599cdbe30a0cf974015d63f9cd20866838a2432ae5d"
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
