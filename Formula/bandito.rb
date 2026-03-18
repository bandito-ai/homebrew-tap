class Bandito < Formula
  desc "CLI and TUI grading workbench for Bandito — contextual bandit optimizer for LLM selection"
  homepage "https://bandito.dev"
  version "0.1.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bandito-ai/bandito/releases/download/v0.1.9/bandito-aarch64-apple-darwin.tar.gz"
      sha256 "e6f816d90697a8be14efcebde2c1e6c057761f12e82fe98c63bd1d610ad169d8"
    else
      url "https://github.com/bandito-ai/bandito/releases/download/v0.1.9/bandito-x86_64-apple-darwin.tar.gz"
      sha256 "2cc1f8e3890195305ec2b293ae59eedd635df194e3ef7e9a11203f50b715d673"
    end
  end

  on_linux do
    url "https://github.com/bandito-ai/bandito/releases/download/v0.1.9/bandito-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3ffb49d7e29813d180d8d81c41553a9254b801369e52851ff6d5ead429851878"
  end

  def install
    bin.install "bandito"
  end

  test do
    assert_match "bandito", shell_output("\#<built-in function bin>/bandito --version")
  end
end
