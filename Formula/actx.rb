class Actx < Formula
  desc "Personal CLI context-compressor for AI agents"
  homepage "https://github.com/ampersante/actx"
  url "https://github.com/ampersante/actx/archive/refs/tags/v2.9.0.tar.gz"
  sha256 "07a9a2fd7aa984c7be9a54bbc59083a4e97a2fb983e926a07b17c9cc16aef9ee"
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
