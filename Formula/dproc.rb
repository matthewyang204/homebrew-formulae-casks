class Dproc < Formula
    version "1.2.3"
    desc "A basic CLI data processor, designed to be fed data and output data directly from the commandline"
    homepage "https://github.com/matthewyang204/dproc"
    if OS.mac?
        url "https://github.com/matthewyang204/dproc/releases/download/#{version}/dproc-#{version}-universal2-apple-darwin.tar.xz"
        sha256 "22fa3f4fd682d1dc89550a5880e71c5df27051863a20299271e6990a362dc7c4"
    elsif OS.linux?
        url "https://github.com/matthewyang204/dproc/releases/download/#{version}/dproc-#{version}-x86_64-unknown-linux-gnu.tar.xz"
        sha256 "adb22863037cdff0f9fdfa3f740c0d7313da720628931eeb7f8084db79622988"
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
