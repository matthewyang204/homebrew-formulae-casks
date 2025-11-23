class Dproc < Formula
    version "1.2.2"
    desc "A basic CLI data processor, designed to be fed data and output data directly from the commandline"
    homepage "https://github.com/matthewyang204/dproc"
    if OS.mac?
        url "https://github.com/matthewyang204/dproc/releases/download/#{version}/dproc-#{version}-universal2-apple-darwin.tar.xz"
        sha256 "83c1ba1b670f4b47199513b69504658f1f62918b37724d9bc7b34e32e2d5d32b"
    elsif OS.linux?
        url "https://github.com/matthewyang204/dproc/releases/download/#{version}/dproc-#{version}-x86_64-unknown-linux-gnu.tar.xz"
        sha256 "2f20e68a7e0ef1c8ab603483ccd9818349a9cc569b578eebf528fec655f1dd49"
    end

    def install
        if OS.mac?
            if MacOS.version < :sierra
                odie "dproc requires macOS Sierra or later to run."
            end
        end
        bin.install "dproc"
    end
end
