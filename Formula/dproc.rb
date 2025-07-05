class Dproc < Formula
    version "1.0.1"
    desc "A basic CLI data processor, designed to be fed data and output data directly from the commandline"
    homepage "https://github.com/matthewyang204/dproc"
    if OS.mac?
        url "https://github.com/matthewyang204/dproc/releases/download/#{version}/dproc-#{version}-universal2-apple-darwin.tar.xz"
        sha256 "f41de0f1df46dc62afd837d5b500d052dc4315c220b3db776b7a7d1c6c93992d"
    elsif OS.linux?
        url "https://github.com/matthewyang204/dproc/releases/download/#{version}/dproc-#{version}-x86_64-unknown-linux-gnu.tar.xz"
        sha256 "b2f1e6d2372102f9044676f65b8f6649db37c58614e32bd330dd26f5bc8c9937"
    end

    def install
        if MacOS.version < :sierra
            odie "dproc requires macOS Sierra or later to run."
        end
        bin.install "dproc"
    end
end