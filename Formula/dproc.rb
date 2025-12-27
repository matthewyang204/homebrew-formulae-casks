class Dproc < Formula
    version "1.2.4"
    desc "A basic CLI data processor, designed to be fed data and output data directly from the commandline"
    homepage "https://github.com/matthewyang204/dproc"
    if OS.mac?
        url "https://github.com/matthewyang204/dproc/releases/download/#{version}/dproc-#{version}-universal2-apple-darwin.tar.xz"
        sha256 "d6a84a29feeb9eb93c77398e4c08dfc9d62b6790a32f746bbdde6b1b563dca11"
    elsif OS.linux?
        url "https://github.com/matthewyang204/dproc/releases/download/#{version}/dproc-#{version}-x86_64-unknown-linux-gnu.tar.xz"
        sha256 "be5d32637cfa2ce3390fbe72b6ec3388d5c4522413a85ea00f89e740a7011bea"
    end

    def install
        if OS.mac?
            if MacOS.version < :sierra
                odie "dproc requires macOS Sierra or later to run."
            end
            bin.install "dproc"
        elsif OS.linux?
            bin.install "bin/dproc"
        end
    end
end
