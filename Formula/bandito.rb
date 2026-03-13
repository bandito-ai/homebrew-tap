class Bandito < Formula
  desc "CLI and TUI grading workbench for Bandito — contextual bandit optimizer for LLM selection"
  homepage "https://bandito.dev"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bandito-ai/bandito/releases/download/v0.1.6/bandito-aarch64-apple-darwin.tar.gz"
      sha256 "113ba1182a4520f427f16a12f8354ec96188db94c1e8b445fe94a0ff5a91df07"
    else
      url "https://github.com/bandito-ai/bandito/releases/download/v0.1.6/bandito-x86_64-apple-darwin.tar.gz"
      sha256 "dab07c9bff43ba816824f41d3b0b39127ee8bde0681b59ac0e473a9c124fc534"
    end
  end

  on_linux do
    url "https://github.com/bandito-ai/bandito/releases/download/v0.1.6/bandito-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e0db6d97cb5a08ed575522cefb954ba99b2f94e7e40de97d46bb7b5ef0f5c421"
  end

  def install
    bin.install "bandito"
  end

  test do
    assert_match "bandito", shell_output("\#<built-in function bin>/bandito --version")
  end
end
