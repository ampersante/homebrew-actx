class Actx < Formula
  desc "Personal CLI context-compressor for AI agents"
  homepage "https://github.com/ampersante/actx"
  url "https://github.com/ampersante/actx/archive/refs/tags/v2.10.1.tar.gz"
  sha256 "c173483a6da1d878913e7adfef95bde89d9c9da872e6c6e83a212aaedbde4db1"
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
