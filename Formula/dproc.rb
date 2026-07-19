class Dproc < Formula
    version "1.3.0"
    desc "A basic CLI data processor, designed to be fed data and output data directly from the commandline"
    homepage "https://github.com/matthewyang204/dproc"
    if OS.mac?
        url "https://github.com/matthewyang204/dproc/releases/download/#{version}/dproc-#{version}-universal2-apple-darwin.tar.xz"
        sha256 "60815169b5192616c550d962cb0b194e564fc0fdf56d8e51a57859c1deb68191"
    elsif OS.linux?
        url "https://github.com/matthewyang204/dproc/releases/download/#{version}/dproc-#{version}-x86_64-unknown-linux-gnu.tar.xz"
        sha256 "bd333c1f5848bf36559bc169ab6f25815c6d653368511b3c777413cbad891a20"
    end

    def install
        if OS.mac?
            if MacOS.version < :sierra
                odie "dproc requires macOS Sierra or later to run."
            end
            bin.install "dproc"
            bin.install "dfmtutils"
        elsif OS.linux?
            bin.install "bin/dproc"
            bin.install "bin/dfmtutils"
        end
    end
end
