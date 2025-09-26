class DprocGui < Formula
  version "2025.9.21"
  desc "A basic CLI data processor, designed to be fed data and output data directly from the commandline"
  homepage "https://github.com/matthewyang204/dproc"
  url "https://github.com/matthewyang204/dproc/releases/download/gui-#{version}/dproc-gui-#{version}.tar.xz"
  sha256 "c70049fecce526a22be25f26f99f2cf51548ba15f97b21b46a8868ff2c32a6e7"
  license "GPL-3.0"

  depends_on "python" => :build
  depends_on "tcl-tk" => :build
  depends_on "python-tk" => :build
  depends_on "pyinstaller" => :build
  depends_on "dproc"

  def install
    ENV["TCL_LIBRARY"] = Formula["tcl-tk"].opt_lib/"tcl9.0"
    ENV["TK_LIBRARY"]  = Formula["tcl-tk"].opt_lib/"tk9.0"

    system "curl", "-LO", "https://github.com/matthewyang204/homebrew-formulae-casks/raw/refs/heads/main/Resources/dproc-gui-build.py"

    system python3, "dproc-gui-build.py"
    # system "exit", "1"
    bin.install "dist/dproc-gui"
  end
end
