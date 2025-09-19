class Dproc < Formula
    version "1.2.0"
    desc "A basic CLI data processor, designed to be fed data and output data directly from the commandline"
    homepage "https://github.com/matthewyang204/dproc"
    if OS.mac?
        url "https://github.com/matthewyang204/dproc/releases/download/#{version}/dproc-#{version}-universal2-apple-darwin.tar.xz"
        sha256 "c7d1af90a1955cb45e78abbf48cdef8df6ad57406043931dc3c05ddb807109cf"
    elsif OS.linux?
        url "https://github.com/matthewyang204/dproc/releases/download/#{version}/dproc-#{version}-x86_64-unknown-linux-gnu.tar.xz"
        sha256 "0be6b00e2bab6ce97d0fe9767234d57fc77b4c7758dd51286acf7f003d68aab4"
    end

    def install
        if MacOS.version < :sierra
            odie "dproc requires macOS Sierra or later to run."
        end
        bin.install "dproc"
    end
end
