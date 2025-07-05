class Dproc < Formula
    version "1.0.1"
    sha256 :no_check

    desc "A basic CLI data processor, designed to be fed data and output data directly from the commandline"
    homepage "https://github.com/matthewyang204/dproc"
    if OS.mac?
        url "https://github.com/matthewyang204/dproc/releases/download/#{version}/dproc-#{version}-universal2-apple-darwin.tar.xz"
    elseif OS.linux?
        url "https://github.com/matthewyang204/dproc/releases/download/#{version}/dproc-#{version}-x86_64-unknown-linux-gnu.tar.xz"
    end

    def install
        if MacOS.version < :sierra
            odie "dproc requires macOS Sierra or later to run."
        end
        bin.install "dproc"
    end
end