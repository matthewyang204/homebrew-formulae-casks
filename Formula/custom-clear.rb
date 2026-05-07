class CustomClear < Formula
  desc "My custom `clear` program for macOS, part of my collection of scripts"
  homepage "https://github.com/matthewyang204/scripts"
  version "1.1.0"
  url "https://github.com/matthewyang204/scripts/archive/refs/tags/clear-1.1.tar.gz"
  sha256 "6b2d18a387e617af24aee67346ce8c01942e936785a2fbcba192948f31fbe7d8"
  license "GPL-3.0"

  depends_on "bash"

  def install
    system "mkdir -p build"
    system "cp misc/macos-clear build/clear"
    if prefix.to_s.start_with?("/usr/local/Cellar")
      system "cp misc/legacybrew-clear.source build/clear.source"
    else
      system "cp misc/homebrew-clear.source build/clear.source"
    end
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
