class Genignore < Formula
  desc "A utility for setting up .gitignores"
  homepage "https://github.com/matthewyang204/genignore"
  url "https://github.com/matthewyang204/genignore/archive/refs/heads/production.zip"
  version "1.0.0"
  sha256 "a1d146fd418e2c31423d04061823c4f89445c2736c719c5a789707701d9ab7ba"
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
