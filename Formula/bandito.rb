class Bandito < Formula
  desc "CLI and TUI grading workbench for Bandito — contextual bandit optimizer for LLM selection"
  homepage "https://bandito.dev"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bandito-ai/bandito/releases/download/v0.1.1/bandito-aarch64-apple-darwin.tar.gz"
      sha256 "72696c637be5f7640fc37bb40c41287e278200a0091394dec76da53ace4e1512"
    else
      url "https://github.com/bandito-ai/bandito/releases/download/v0.1.1/bandito-x86_64-apple-darwin.tar.gz"
      sha256 "b64391974d54309ecf0018394fee10312e0c5f16767b064d30e94c58dd90fe29"
    end
  end

  on_linux do
    url "https://github.com/bandito-ai/bandito/releases/download/v0.1.1/bandito-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "7d050ddf42bc0e7bc967f07dfa2e93f9312eef070cb5dee661076cf667acedc2"
  end

  def install
    bin.install "bandito"
  end

  test do
    assert_match "bandito", shell_output("\#<built-in function bin>/bandito --version")
  end
end
