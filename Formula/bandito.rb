class Bandito < Formula
  desc "CLI and TUI grading workbench for Bandito — contextual bandit optimizer for LLM selection"
  homepage "https://bandito.dev"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bandito-ai/bandito/releases/download/v0.1.4/bandito-aarch64-apple-darwin.tar.gz"
      sha256 "9222e82ac1d84e90651bdd6507f71a914c77bf378dfd4906dd0b64219c5296d2"
    else
      url "https://github.com/bandito-ai/bandito/releases/download/v0.1.4/bandito-x86_64-apple-darwin.tar.gz"
      sha256 "afa0441b8658bb0cf6ed4f2c64461e585825175b3cdbd65c5ad0b89455d6cd5e"
    end
  end

  on_linux do
    url "https://github.com/bandito-ai/bandito/releases/download/v0.1.4/bandito-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "df061f8d3f80ed54d0f212bd7c2b01f376f0c518738858bd1d2fed8d37510163"
  end

  def install
    bin.install "bandito"
  end

  test do
    assert_match "bandito", shell_output("\#<built-in function bin>/bandito --version")
  end
end
