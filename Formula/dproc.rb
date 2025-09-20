class Dproc < Formula
    version "1.2.1"
    desc "A basic CLI data processor, designed to be fed data and output data directly from the commandline"
    homepage "https://github.com/matthewyang204/dproc"
    if OS.mac?
        url "https://github.com/matthewyang204/dproc/releases/download/#{version}/dproc-#{version}-universal2-apple-darwin.tar.xz"
        sha256 "69949adb65bb347759ada71f7bc6e6f3f02033dbc6141a0e699a2f98cd32fea1"
    elsif OS.linux?
        url "https://github.com/matthewyang204/dproc/releases/download/#{version}/dproc-#{version}-x86_64-unknown-linux-gnu.tar.xz"
        sha256 "b3ffb4f867072efc74d84a4fa66a00cb69e2ddd0d21f7533ceaa73812310f6ee"
    end

    def install
        if MacOS.version < :sierra
            odie "dproc requires macOS Sierra or later to run."
        end
        bin.install "dproc"
    end
end
