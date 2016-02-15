class Autolock < Formula
  desc "OS X auto locker when lid closed"
  homepage "https://github.com/glushchenko/mac-autolock"
  url "https://github.com/glushchenko/mac-autolock/archive/1.0.tar.gz"
  sha256 "c1c89c41ccd3f50db88e7dbbefa9f28e8867d6d96d761b26832e54020024ce81"

  bottle :unneeded

  def install
    bin.install "autolock"
  end
end
