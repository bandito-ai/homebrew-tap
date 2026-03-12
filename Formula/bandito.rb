class Bandito < Formula
  desc "CLI and TUI grading workbench for Bandito — contextual bandit optimizer for LLM selection"
  homepage "https://bandito.dev"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bandito-ai/bandito/releases/download/v0.1.2/bandito-aarch64-apple-darwin.tar.gz"
      sha256 "76a006d7f51071c4cc623e896d433f0c254ffbe90580617597935f8921652f35"
    else
      url "https://github.com/bandito-ai/bandito/releases/download/v0.1.2/bandito-x86_64-apple-darwin.tar.gz"
      sha256 "4168cf68c08a514b741d86f76e95e094490c9d5a70a9331345a08fdfee0b6a07"
    end
  end

  on_linux do
    url "https://github.com/bandito-ai/bandito/releases/download/v0.1.2/bandito-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0982d6673e1d3093e5e8b7f46b8fc18465d32003ae07d130fe8f2a5636c91d8c"
  end

  def install
    bin.install "bandito"
  end

  test do
    assert_match "bandito", shell_output("\#<built-in function bin>/bandito --version")
  end
end
