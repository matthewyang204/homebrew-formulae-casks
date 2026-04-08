class CustomClear < Formula
  desc "My custom `clear` program for macOS, part of my collection of scripts"
  homepage "https://github.com/matthewyang204/scripts"
  version "1.0.0"
  url "https://github.com/matthewyang204/scripts/archive/refs/tags/clear-1.0.tar.gz"
  sha256 "646979e5812e2d0a2d0214a77a519aac8586ce7164e05e7cc4ca80b370b85980"
  license "GPL-3.0"

  depends_on "bash"

  def install
    system "mkdir -p build"
    system "cp misc/macos-clear build/clear"
    system "cp misc/homebrew-clear.source build/clear.source"
    bin.install "build/clear"
    share.install "build/clear.source"
  end

  def caveats
    <<~EOS
      The program is installed to:
      `#{prefix}/bin`

      You need to add that to your path by adding the following to your shell startup script, usually `~/.zshrc` or `~/.bashrc`:
      `source #{prefix}/share/clear.source`
    EOS
  end

  test do
    system "#{prefix}/bin/clear"
  end
end
