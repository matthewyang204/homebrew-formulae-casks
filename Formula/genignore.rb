class Genignore < Formula
  desc "A utility for setting up .gitignores"
  homepage "https://github.com/matthewyang204/genignore"
  url "https://github.com/matthewyang204/genignore/archive/refs/heads/production.zip"
  version "1.0.0"
  sha256 "cd70bf5259515e2bc191b126ec144d657a1d532ee0b732d5073a4f6157760e20"
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
