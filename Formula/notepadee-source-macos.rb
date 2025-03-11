# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class notepadee-source-macos < Formula
  desc "Simple text editor for unix systems and Windows Notepad alternative"
  homepage ""
  version "4.9.2"
  url "https://github.com/matthewyang204/NotepadEE/archive/refs/tags/#{version}.tar.gz"
  sha256 "74a1c276247771a2cb90ed0f573ebfa65402ee8032e32da0d45c22461747f48f"
  license ""

  # depends_on "cmake" => :build

  # Additional dependency
  # resource "" do
  #   url ""
  #   sha256 ""
  # end

  def install
    # Remove unrecognized options if they cause configure to fail
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    system "cd macOS", "&&", "./autogen.sh", "&&", "sudo make install"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test notepadee-source`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system bin/"program", "do", "something"`.
    system "false"
  end
end
