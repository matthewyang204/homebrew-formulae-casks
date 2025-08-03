class Dproc < Formula
    version "1.1.1"
    revision 2
    desc "A basic CLI data processor, designed to be fed data and output data directly from the commandline"
    homepage "https://github.com/matthewyang204/dproc"
    if OS.mac?
        url "https://github.com/matthewyang204/dproc/releases/download/#{version}/dproc-#{version}-universal2-apple-darwin.tar.xz"
        sha256 "2b37bdcf5c7668a674bb0278e538811a54f766a882f4a8fee83f7b1781687d32"
    elsif OS.linux?
        url "https://github.com/matthewyang204/dproc/releases/download/#{version}/dproc-#{version}-x86_64-unknown-linux-gnu.tar.xz"
        sha256 "345f2aef30a35e967cb0c638102ebce1807de357f1674080b5825495972eec48"
    end

    def install
        if MacOS.version < :sierra
            odie "dproc requires macOS Sierra or later to run."
        end
        bin.install "dproc"
    end
end
