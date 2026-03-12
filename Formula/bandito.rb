class Bandito < Formula
  desc "CLI and TUI grading workbench for Bandito — contextual bandit optimizer for LLM selection"
  homepage "https://bandito.dev"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bandito-ai/bandito/releases/download/v0.1.5/bandito-aarch64-apple-darwin.tar.gz"
      sha256 "9c3b6fe03d44801c19176f827c2308734804081e247d867bf987195386fa2de5"
    else
      url "https://github.com/bandito-ai/bandito/releases/download/v0.1.5/bandito-x86_64-apple-darwin.tar.gz"
      sha256 "5ecff8bc2ca87cc2a3bdb487e5a576e23bdeb356eb89c2f1945e7bcc8ceb1c17"
    end
  end

  on_linux do
    url "https://github.com/bandito-ai/bandito/releases/download/v0.1.5/bandito-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "297edb4e0754b9af7819c2535ce5571b5535c6ed072c7080b4d258c3cd140e73"
  end

  def install
    bin.install "bandito"
  end

  test do
    assert_match "bandito", shell_output("\#<built-in function bin>/bandito --version")
  end
end
