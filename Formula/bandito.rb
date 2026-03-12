class Bandito < Formula
  desc "CLI and TUI grading workbench for Bandito — contextual bandit optimizer for LLM selection"
  homepage "https://bandito.dev"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bandito-ai/bandito/releases/download/v#{version}/bandito-aarch64-apple-darwin.tar.gz"
      sha256 "7e2526b29e9a138eab19204a2e7d5d29a10b16c155ec0240a791ec69c07ff286"
    else
      url "https://github.com/bandito-ai/bandito/releases/download/v#{version}/bandito-x86_64-apple-darwin.tar.gz"
      sha256 "fee1d9764ff1a5522ade1ee45658966daab6861d765c0e65f39a7d7096294f4d"
    end
  end

  on_linux do
    url "https://github.com/bandito-ai/bandito/releases/download/v#{version}/bandito-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "95654a8042a6126004ceaf3d8578a7ecf1c3c7c7b377876bb72cb28fdab7a30d"
  end

  def install
    bin.install "bandito"
  end

  test do
    assert_match "bandito", shell_output("#{bin}/bandito --version")
  end
end
