class Actx < Formula
  desc "Personal CLI context-compressor for AI agents"
  homepage "https://github.com/ampersante/actx"
  url "https://github.com/ampersante/actx/archive/refs/tags/v2.2.4.tar.gz"
  sha256 "2d51749d4063473d3b1bba13eb05dcf7016e5f8ec7fd5258db81f008faf7a7f2"
  license "MIT"
  depends_on "python@3.14"

  def install
    libexec.install "actx"
    libexec.install "actx_lib"
    libexec.install "adapters"
    bin.install_symlink libexec/"actx"
  end

  test do
    system "#{bin}/actx", "--version"
  end
end
