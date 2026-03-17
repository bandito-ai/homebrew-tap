class Bandito < Formula
  desc "CLI and TUI grading workbench for Bandito — contextual bandit optimizer for LLM selection"
  homepage "https://bandito.dev"
  version "0.1.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bandito-ai/bandito/releases/download/v0.1.8/bandito-aarch64-apple-darwin.tar.gz"
      sha256 "0c5efbd73e19c06763e94c93fe27bd2ab5caaf21bd13d573e98b2fa0d573a5da"
    else
      url "https://github.com/bandito-ai/bandito/releases/download/v0.1.8/bandito-x86_64-apple-darwin.tar.gz"
      sha256 "9d17a580176c1c15ea2bf0740410e4c64187e5f3c51025e6392f72c020e18682"
    end
  end

  on_linux do
    url "https://github.com/bandito-ai/bandito/releases/download/v0.1.8/bandito-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9f82b58c55d48b65f027b9729cae70b24a4edf82a4ce8c73033d4c144098d187"
  end

  def install
    bin.install "bandito"
  end

  test do
    assert_match "bandito", shell_output("\#<built-in function bin>/bandito --version")
  end
end
