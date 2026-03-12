class Bandito < Formula
  desc "CLI and TUI grading workbench for Bandito — contextual bandit optimizer for LLM selection"
  homepage "https://bandito.dev"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bandito-ai/bandito/releases/download/v0.1.3/bandito-aarch64-apple-darwin.tar.gz"
      sha256 "229d185a0b21b3bf6b89f52b5534a1621a0e50e60aaa7be5df259a12484da75c"
    else
      url "https://github.com/bandito-ai/bandito/releases/download/v0.1.3/bandito-x86_64-apple-darwin.tar.gz"
      sha256 "96bb82388d347f2fd014f0cb0d1d44bd209679651b6613ff6b275e6f761edfbf"
    end
  end

  on_linux do
    url "https://github.com/bandito-ai/bandito/releases/download/v0.1.3/bandito-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6802db4d2a9ac75607a8fffddb7b7c158c40d144f40182fd680fb83c29f2a8e5"
  end

  def install
    bin.install "bandito"
  end

  test do
    assert_match "bandito", shell_output("\#<built-in function bin>/bandito --version")
  end
end
