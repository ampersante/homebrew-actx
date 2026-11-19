class Actx < Formula
  desc "Personal CLI context-compressor for AI agents"
  homepage "https://github.com/ampersante/actx"
  url "https://github.com/ampersante/actx/archive/refs/tags/v2.19.0.tar.gz"
  sha256 "e4783ae664db566cde6485f67e7531c6ca7ff43b5662298f96cd513a8f85716d"
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
