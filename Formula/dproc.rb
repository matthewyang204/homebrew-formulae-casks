class Dproc < Formula
    version "1.0.1"
    sha256 "f41de0f1df46dc62afd837d5b500d052dc4315c220b3db776b7a7d1c6c93992d"

    desc "A basic CLI data processor, designed to be fed data and output data directly from the commandline"
    homepage "https://github.com/matthewyang204/dproc"
    url "https://github.com/matthewyang204/dproc/releases/download/#{version}/dproc-#{version}-universal2-apple-darwin.tar.xz"

    depends_on macos: ">= 10.12"

    def install
        bin.install "dproc"
    end
end