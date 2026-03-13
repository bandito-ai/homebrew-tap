class Bandito < Formula
  desc "CLI and TUI grading workbench for Bandito — contextual bandit optimizer for LLM selection"
  homepage "https://bandito.dev"
  version "0.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bandito-ai/bandito/releases/download/v0.1.7/bandito-aarch64-apple-darwin.tar.gz"
      sha256 "379cbb33fa3cab13a2462123881ba955dae8e3f452d7adf48bb1c5b59c708ea4"
    else
      url "https://github.com/bandito-ai/bandito/releases/download/v0.1.7/bandito-x86_64-apple-darwin.tar.gz"
      sha256 "e890f8e82a7c6c56126d81719fd1aa679299846fc2556434f2f9916d53763eec"
    end
  end

  on_linux do
    url "https://github.com/bandito-ai/bandito/releases/download/v0.1.7/bandito-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "7008baa45c6545a59fa8f4036e405497d583cf2aae8eefe599c215d416198c74"
  end

  def install
    bin.install "bandito"
  end

  test do
    assert_match "bandito", shell_output("\#<built-in function bin>/bandito --version")
  end
end
